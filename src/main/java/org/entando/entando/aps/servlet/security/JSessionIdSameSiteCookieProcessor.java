/*
 * Copyright 2018-Present Entando S.r.l. (http://www.entando.com) All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
package org.entando.entando.aps.servlet.security;

import org.apache.juli.logging.Log;
import org.apache.juli.logging.LogFactory;
import org.apache.tomcat.util.http.CookieProcessorBase;
import org.apache.tomcat.util.http.Rfc6265CookieProcessor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.nio.charset.Charset;
import java.util.regex.Pattern;

/**
 * Custom CookieProcessor that applies SameSite policies with JSESSIONID override capability.
 *
 * <p>Provides two-level SameSite configuration:
 * <ul>
 *   <li>Default policy for all cookies via 'default.samesite.policy' system property</li>
 *   <li>JSESSIONID-specific override via 'jsessionid.samesite.policy' system property (defaults to 'Strict')</li>
 * </ul>
 *
 * @author F.Falqui
 */
public class JSessionIdSameSiteCookieProcessor extends CookieProcessorBase {

    private static final Log log = LogFactory.getLog(JSessionIdSameSiteCookieProcessor.class);

    private final Rfc6265CookieProcessor delegate = new Rfc6265CookieProcessor();
    private final String jsessionIdSameSitePolicy;

    /**
     * Initializes the CookieProcessor with SameSite policies from system properties.
     */
    public JSessionIdSameSiteCookieProcessor() {
        // Set default sameSiteCookies policy from system property if provided
        String defaultSameSite = System.getProperty("default.samesite.policy");
        if (defaultSameSite != null && !defaultSameSite.trim().isEmpty()) {
            delegate.setSameSiteCookies(defaultSameSite);
            log.info("Default SameSite policy set to: " + defaultSameSite);
        }

        // Set JSESSIONID-specific policy from system property
        this.jsessionIdSameSitePolicy = System.getProperty("jsessionid.samesite.policy", "Strict");
        log.info("JSESSIONID SameSite policy set to: " + jsessionIdSameSitePolicy);
    }

    @Override
    public String generateHeader(Cookie cookie) {
        return generateHeader(cookie, null);
    }

    /**
     * Generates cookie header with appropriate SameSite policy.
     *
     * @param cookie the cookie to generate header for
     * @param request the HTTP request (optional)
     * @return cookie header with SameSite attribute
     */
    @Override
    public String generateHeader(Cookie cookie, HttpServletRequest request) {
        String header = delegate.generateHeader(cookie, request);

        // Override JSESSIONID specifically
        if ("JSESSIONID".equals(cookie.getName())) {
            //we are only considering this pattern because Cookie object is directly menaged by tomcat, 
            //so custom attributes containing SameSite are not possible

            boolean hasSameSite = Pattern.compile(";\\sSameSite=", Pattern.CASE_INSENSITIVE)
                                        .matcher(header).find();
            if (hasSameSite) {
                // Replace existing SameSite with JSESSIONID-specific policy
                header = header.replaceAll("SameSite=[^;]*", "SameSite=" + jsessionIdSameSitePolicy);
                log.debug("Replaced SameSite with " + jsessionIdSameSitePolicy + " for JSESSIONID");
            } else {
                header = header + "; SameSite=" + jsessionIdSameSitePolicy;
                log.debug("Added SameSite=" + jsessionIdSameSitePolicy + " to JSESSIONID");
            }
        }

        return header;
    }

    @Override
    public Charset getCharset() {
        return delegate.getCharset();
    }

    @Override
    public void parseCookieHeader(org.apache.tomcat.util.http.MimeHeaders headers,
                                  org.apache.tomcat.util.http.ServerCookies serverCookies) {
        delegate.parseCookieHeader(headers, serverCookies);
    }

}

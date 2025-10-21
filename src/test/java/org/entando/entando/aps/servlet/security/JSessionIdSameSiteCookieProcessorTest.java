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

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.AfterEach;

import javax.servlet.http.Cookie;

import static org.junit.jupiter.api.Assertions.*;

class JSessionIdSameSiteCookieProcessorTest {

    private JSessionIdSameSiteCookieProcessor processor;

    @BeforeEach
    void setUp() {
        // Set default system properties from previous test
        System.setProperty("jsessionid.samesite.policy", "Strict");
        System.setProperty("default.samesite.policy", "");
        processor = new JSessionIdSameSiteCookieProcessor();
    }

    @AfterEach
    void tearDown() {
        // Clean up system properties after tests
        System.clearProperty("jsessionid.samesite.policy");
        System.clearProperty("default.samesite.policy");
    }

    @Test
    @DisplayName("JSESSIONID cookie should have SameSite=Strict added by default")
    void testJSessionIdCookieGetsSameSiteDefault() {
        // Given - no system properties set, should use default "Strict"

        Cookie jsessionCookie = new Cookie("JSESSIONID", "ABC123DEF456");

        // When
        String header = processor.generateHeader(jsessionCookie);

        // Then
        assertNotNull(header);
        assertTrue(header.contains("JSESSIONID=ABC123DEF456"),
                   "Header should contain the cookie name and value");
        assertTrue(header.contains("SameSite=Strict"),
                   "JSESSIONID cookie should have SameSite=Strict by default");
    }

    @Test
    @DisplayName("Other cookies should NOT have SameSite added when no default policy")
    void testOtherCookiesRemainUnchangedWithoutDefault() {
        // Given - no default policy set
        Cookie userCookie = new Cookie("USER_PREF", "theme=dark");
        Cookie sessionCookie = new Cookie("MY_SESSION", "xyz789");
        Cookie authCookie = new Cookie("AUTH_TOKEN", "bearer123");

        // When
        String userHeader = processor.generateHeader(userCookie);
        String sessionHeader = processor.generateHeader(sessionCookie);
        String authHeader = processor.generateHeader(authCookie);

        // Then
        assertNotNull(userHeader);
        assertNotNull(sessionHeader);
        assertNotNull(authHeader);

        assertFalse(userHeader.contains("SameSite"),
                    "USER_PREF cookie should NOT have SameSite without default policy");
        assertFalse(sessionHeader.contains("SameSite"),
                    "MY_SESSION cookie should NOT have SameSite without default policy");
        assertFalse(authHeader.contains("SameSite"),
                    "AUTH_TOKEN cookie should NOT have SameSite without default policy");
    }

    @Test
    @DisplayName("Default policy should apply to non-JSESSIONID cookies when set")
    void testDefaultPolicyAppliedToOtherCookies() {
        // Given
        System.setProperty("default.samesite.policy", "Lax");
        JSessionIdSameSiteCookieProcessor processor = new JSessionIdSameSiteCookieProcessor();
        Cookie userCookie = new Cookie("USER_PREF", "theme=dark");

        // When
        String header = processor.generateHeader(userCookie);

        // Then
        assertNotNull(header);
        assertTrue(header.contains("SameSite=Lax"),
                "Non-JSESSIONID cookies should use default policy when set");

        int sameSiteCount = header.split("SameSite=").length - 1;
        assertEquals(1, sameSiteCount, "Should have exactly one SameSite attribute");
    }

    @Test
    @DisplayName("Custom JSESSIONID SameSite policy from system property should be used")
    void testCustomJSessionIdSameSitePolicyFromSystemProperty() {
        // Given
        System.setProperty("jsessionid.samesite.policy", "Lax");
        processor = new JSessionIdSameSiteCookieProcessor();
        Cookie jsessionCookie = new Cookie("JSESSIONID", "ABC123DEF456");

        // When
        String header = processor.generateHeader(jsessionCookie);

        // Then
        assertNotNull(header);
        assertTrue(header.contains("SameSite=Lax"),
                   "Should use custom JSESSIONID SameSite policy from system property");
        assertFalse(header.contains("SameSite=Strict"),
                    "Should not use default Strict when custom policy is set");

        int sameSiteCount = header.split("SameSite=").length - 1;
        assertEquals(1, sameSiteCount, "Should have exactly one SameSite attribute");
    }

    @Test
    @DisplayName("Default SameSite policy should apply to all cookies except JSESSIONID override")
    void testDefaultSameSitePolicyWithJSessionIdOverride() {
        // Given - processor with default SameSite policy
        System.setProperty("default.samesite.policy", "Lax");
        processor = new JSessionIdSameSiteCookieProcessor();

        Cookie jsessionCookie = new Cookie("JSESSIONID", "session123");
        Cookie userCookie = new Cookie("USER_PREF", "theme=dark");

        // When
        String jsessionHeader = processor.generateHeader(jsessionCookie);
        String userHeader = processor.generateHeader(userCookie);

        // Then
        assertTrue(jsessionHeader.contains("SameSite=Strict"),
                   "JSESSIONID should use override policy, not default");
        // Note: Testing default policy behavior depends on Rfc6265CookieProcessor implementation
        // The user cookie behavior will depend on the delegate's sameSiteCookies setting
        assertTrue(userHeader.contains("SameSite=Lax"));

        int sameSiteCount = jsessionHeader.split("SameSite=").length - 1;
        assertEquals(1, sameSiteCount, "Should have exactly one SameSite attribute");
    }


}
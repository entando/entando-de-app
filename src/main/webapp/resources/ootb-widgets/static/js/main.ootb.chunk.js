(this["webpackJsonpentando-ootb-widgets"]=this["webpackJsonpentando-ootb-widgets"]||[]).push([[0],{53:function(e,t,a){e.exports=a(69)},58:function(e,t,a){},63:function(e,t,a){},65:function(e,t,a){},66:function(e,t,a){},67:function(e,t,a){},68:function(e,t,a){},69:function(e,t,a){"use strict";a.r(t);var n=a(0),r=a.n(n),c=a(11),o=a.n(c),l=(a(58),a(5)),i=a(6),u=a(34),s=a(7),d=a(8),h=a(48),p=a(4),g=a(73),m=a(70),f=a(71),v=a(87),b=a(72),E=a(74),O=a(75),y=a(76),k=a(77),j=a(78),N=[{code:"EN",descr:"English"},{code:"IT",descr:"Italian"}],P=[{code:"homepage",title:"Home",level:"0",url:"http://localhost:8090/entando-de-app/en/homepage.page",voidPage:!0},{code:"my_page",title:"My Page",level:"1",url:"http://localhost:8090/entando-de-app/en/my_page.page",voidPage:!1},{code:"homepage_test",title:"Home - test",level:"1",url:"http://localhost:8090/entando-de-app/en/homepage_test.page",voidPage:!1},{code:"sitemap",title:"Sitemap",level:"2",url:"http://localhost:8090/entando-de-app/en/sitemap.page",voidPage:!1},{code:"homepage",title:"Home",level:"0",url:"http://localhost:8090/entando-de-app/en/homepage.page",voidPage:!0},{code:"my_page",title:"My Page",level:"0",url:"http://localhost:8090/entando-de-app/en/my_page.page",voidPage:!1},{code:"homepage_test",title:"Home - test",level:"1",url:"http://localhost:8090/entando-de-app/en/homepage_test.page",voidPage:!0},{code:"sitemap",title:"Sitemap",level:"2",url:"http://localhost:8090/entando-de-app/en/sitemap.page",voidPage:!1},{code:"my_pagesdfdf",title:"My Page Wa",level:"2",url:"http://localhost:8090/entando-de-app/en/my_page.page",voidPage:!1},{code:"gbadoasd",title:"Forever",level:"3",url:"http://localhost:8090/entando-de-app/en/my_page.page",voidPage:!1},{code:"contact",title:"Contact",level:"2",url:"http://localhost:8090/entando-de-app/en/contact.page",voidPage:!1},{code:"address",title:"Address",level:"3",url:"http://localhost:8090/entando-de-app/en/address.page",voidPage:!1},{code:"about",title:"About",level:"1",url:"http://localhost:8090/entando-de-app/en/homepage.page",voidPage:!0},{code:"homepage",title:"Home",level:"0",url:"http://localhost:8090/entando-de-app/en/homepage.page",voidPage:!0}],C=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(e){var n;return Object(l.a)(this,a),(n=t.call(this,e)).state={expanded:!1},n.handleExpandSidePanel=n.handleExpandSidePanel.bind(Object(u.a)(n)),n}return Object(i.a)(a,[{key:"handleExpandSidePanel",value:function(){this.setState((function(e){return{expanded:!e.expanded}}))}},{key:"render",value:function(){return r.a.createElement(h.a,null,r.a.createElement(m.a,{"aria-label":"Entando OOTB Widgets Dev"},r.a.createElement(f.a,{href:"#",prefix:"Entando"},"OOTB Widgets Dev"),r.a.createElement(v.a,null,r.a.createElement(b.a,{"aria-label":"Components List",onClick:this.handleExpandSidePanel},r.a.createElement(g.a,null))),r.a.createElement(E.a,{"aria-label":"Header Panel",expanded:this.state.expanded},r.a.createElement(O.a,{"aria-label":"Switcher Container"},r.a.createElement(y.a,{"aria-label":"Language Chooser",href:"/"},"Language Chooser"),r.a.createElement(y.a,{href:"/nav-bar","aria-label":"Navigation Bar"},"Navigation Bar"),r.a.createElement(y.a,{href:"/login-button","aria-label":"Login Button"},"Login Button"),r.a.createElement(y.a,{href:"/search-bar","aria-label":"Search Bar"},"Search Bar"),r.a.createElement(y.a,{href:"/header-fragment","aria-label":"Header Fragment"},"Header Fragment"),r.a.createElement(k.a,null)))),r.a.createElement(j.a,null,r.a.createElement(p.a,{path:"/",exact:!0,render:function(){return r.a.createElement("choose-language-widget",{"current-lang":"EN",languages:JSON.stringify(N)})}}),r.a.createElement(p.a,{path:"/login-button",exact:!0,render:function(){return r.a.createElement("login-button-widget",{"app-url":"http://localhost:8090/entando-de-app/",page:"".concat("http://localhost:8090/entando-de-app/","en/homepage.page")})}}),r.a.createElement(p.a,{path:"/nav-bar",exact:!0,render:function(){return r.a.createElement(m.a,{"aria-label":"Entando Navigation Bar"},r.a.createElement("navigation-bar-widget",{"current-page":"homepage","nav-items":JSON.stringify(P)}))}}),r.a.createElement(p.a,{path:"/search-bar",exact:!0,render:function(){return r.a.createElement("search-bar-widget",{"action-url":"http://localhost:8090/entando-de-app/",placeholder:"Search"})}}),r.a.createElement(p.a,{path:"/header-fragment",exact:!0,render:function(){return r.a.createElement("header-fragment",{"app-url":"http://localhost:8090/entando-de-app/"},r.a.createElement("template",null,r.a.createElement("navigation-bar-widget",{"current-page":"homepage","nav-items":JSON.stringify(P)}),r.a.createElement("choose-language-widget",{"current-lang":"EN",languages:JSON.stringify(N)}),r.a.createElement("login-button-widget",{"app-url":"http://localhost:8090/entando-de-app/",page:"".concat("http://localhost:8090/entando-de-app/","en/homepage.page")})))}})))}}]),a}(n.Component),w=a(17),_=a(25),L=a(85),x=a(81),A=a(79),S=a(80),B=(a(63),function(e){var t=e.languages,a=e.currentLang;return r.a.createElement(L.a,{renderIcon:function(){return r.a.createElement(r.a.Fragment,null,r.a.createElement(A.a,null),r.a.createElement(S.b,{className:"chooseLanguage__menu-arrow"}))},flipped:!0,className:"chooseLanguage"},t.map((function(e){return r.a.createElement(x.a,{key:e.code,itemText:e.descr,href:e.url,className:["langItem"].concat(Object(_.a)(a===e.code?["active"]:[])).join(" ")})})))});B.defaultProps={languages:[],currentLang:""};var T=B,R={languages:"languages",currentLang:"current-lang"},M=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(){return Object(l.a)(this,a),t.apply(this,arguments)}return Object(i.a)(a,[{key:"attributeChangedCallback",value:function(e,t,a){if(!Object.values(R).includes(e))throw new Error("Untracked changed attribute: ".concat(e));this.mountPoint&&a!==t&&this.render()}},{key:"connectedCallback",value:function(){this.mountPoint=document.createElement("div"),this.appendChild(this.mountPoint),this.render()}},{key:"render",value:function(){var e=JSON.parse(this.getAttribute(R.languages)),t=this.getAttribute(R.currentLang);o.a.render(r.a.createElement(T,{languages:e,currentLang:t}),this.mountPoint)}}],[{key:"observedAttributes",get:function(){return Object.values(R)}}]),a}(Object(w.a)(HTMLElement));customElements.get("choose-language-widget")||customElements.define("choose-language-widget",M);var I=a(51),U=a.n(I),H=a(38),D=a(24),q=a(86),J=(a(65),function(e){var t=e.applicationBaseURL,a=(e.sessionUser,e.userDisplayName),n=e.currentPage,c=Object(H.useKeycloak)(),o=Object(D.a)(c,1)[0];return r.a.createElement("div",{className:"LoginButtonWidget"},o.authenticated?r.a.createElement("div",{className:"LoginButtonWidget__wellcome"},"Welcome, ",a,"! (",r.a.createElement("a",{href:"".concat(t,"do/logout.action")},"Logout"),")"):r.a.createElement(q.a,{onClick:function(){window.location.href="".concat(t,"do/login?redirectTo=").concat(n)}},"Login"))});J.defaultProps={sessionUser:"",userDisplayName:"",currentPage:""};var F=J,K=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(e){var n;return Object(l.a)(this,a),(n=t.call(this,e)).state={keycloak:null},n}return Object(i.a)(a,[{key:"componentDidMount",value:function(){var e=this.props.applicationBaseURL,t=new U.a("".concat(e,"keycloak.json"));this.setState({keycloak:t})}},{key:"render",value:function(){var e=this.state.keycloak;return e?r.a.createElement(H.KeycloakProvider,{keycloak:e,initConfig:{onLoad:"check-sso",checkLoginIframe:!0}},r.a.createElement(F,this.props)):null}}]),a}(n.Component);K.defaultProps={applicationBaseURL:"http://localhost:8090/entando-de-app/"};var W=K,V={sessionUser:"session-user",userDisplayName:"user-display-name",currentPage:"page",applicationBaseURL:"app-url"},z=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(){return Object(l.a)(this,a),t.apply(this,arguments)}return Object(i.a)(a,[{key:"attributeChangedCallback",value:function(e,t,a){if(!Object.values(V).includes(e))throw new Error("Untracked changed attribute: ".concat(e));this.mountPoint&&a!==t&&this.render()}},{key:"connectedCallback",value:function(){this.mountPoint=document.createElement("div"),this.appendChild(this.mountPoint),this.render()}},{key:"render",value:function(){var e=this.getAttribute(V.sessionUser),t=this.getAttribute(V.userDisplayName),a=this.getAttribute(V.currentPage),n=this.getAttribute(V.applicationBaseURL);o.a.render(r.a.createElement(W,{sessionUser:e,userDisplayName:t,currentPage:a,applicationBaseURL:n}),this.mountPoint)}}],[{key:"observedAttributes",get:function(){return Object.values(V)}}]),a}(Object(w.a)(HTMLElement));customElements.get("login-button-widget")||customElements.define("login-button-widget",z);var G=a(19),Q=a(52),X=a(82),Y=a(83),Z=a(16),$=a(3),ee=a.n($),te=function(e,t){for(var a=0;a<t.length;a++)if(ae(e,t[a]))return!0;return!1},ae=function(e){var t=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},a=t.key,n=t.which,r=t.keyCode;return"string"===typeof e?e===a:"number"===typeof e?e===n||e===r:e.key&&Array.isArray(a)?-1!==a.indexOf(e.key):e.key===a||e.which===n||e.keyCode===r},ne={key:"Enter",which:13,keyCode:13},re={key:["Escape","Esc"],which:27,keyCode:27},ce={key:" ",which:32,keyCode:32},oe=a(2),le=a.n(oe),ie=a(39),ue=(function(e){var t=Object.keys(e);t.reduce((function(t,a){return Object(G.a)(Object(G.a)({},t),{},Object(ie.a)({},a,(n=e[a],function(e,t,a){for(var r=arguments.length,c=new Array(r>3?r-3:0),o=3;o<r;o++)c[o-3]=arguments[o];return n.apply(void 0,[e,t,a].concat(c))})));var n}),{})}({"aria-label":le.a.string,"aria-labelledby":le.a.string}),Z.a.prefix),se=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(e){var n;return Object(l.a)(this,a),(n=t.call(this,e))._subMenus=r.a.createRef(),n.handleOnIconClick=function(e){e.stopPropagation(),e.preventDefault(),n.setState((function(e){return{expanded:!e.expanded}}))},n.handleOnClick=function(e){if("#"===n.props.href){var t=n._subMenus.current;t&&t.contains(e.target)||e.preventDefault(),n.setState((function(e){return{expanded:!e.expanded}}))}},n.handleOnKeyDown=function(e){if(te(e,[ne,ce]))return e.stopPropagation(),e.preventDefault(),void n.setState((function(e){return{expanded:!e.expanded}}))},n.handleOnBlur=function(e){if(null!==e.relatedTarget){var t=e.relatedTarget.closest("li.".concat(ue,"--header__submenu")),a=e.currentTarget;if(t&&(a.dataset.uniqueId===t.dataset.uniqueId||a.querySelector("li[data-unique-id='".concat(t.dataset.uniqueId,"']"))))return void e.stopPropagation()}var r=n.items.find((function(t){return t===e.relatedTarget}));e.relatedTarget&&(e.relatedTarget.getAttribute("href")&&"#"!==e.relatedTarget.getAttribute("href")||r)||n.setState({expanded:!1,selectedIndex:null})},n.handleMenuButtonRef=function(e){n.props.focusRef&&n.props.focusRef(e),n.menuButtonRef=e},n.handleItemRef=function(e){return function(t){n.items[e]=t}},n.handleMenuClose=function(e){if(te(e,[re])&&n.state.expanded)return e.stopPropagation(),e.preventDefault(),n.setState((function(){return{expanded:!1,selectedIndex:null}})),void n.menuButtonRef.focus()},n._renderMenuItem=function(e,t){if(r.a.isValidElement(e))return r.a.cloneElement(e,{ref:n.handleItemRef(t)})},n.state={expanded:!1,selectedIndex:null},n.items=[],n}return Object(i.a)(a,[{key:"render",value:function(){var e=this.props,t=e["aria-label"],a=e["aria-labelledby"],n=e.className,c=e.children,o=e.renderMenuContent,l=e.menuLinkName,i=e.href,u=e.uniqueId,s={"aria-label":t,"aria-labelledby":a},d=ee()("".concat(ue,"--header__submenu"),n);return r.a.createElement("li",{className:d,onKeyDown:this.handleMenuClose,onClick:this.handleOnClick,tabIndex:0,"data-unique-id":u,onBlur:this.handleOnBlur},r.a.createElement("a",Object.assign({className:"".concat(ue,"--header__menu-item ").concat(ue,"--header__menu-title"),href:i,"aria-expanded":this.state.expanded},s),l,r.a.createElement("button",{"aria-haspopup":"menu",onClick:this.handleOnIconClick,onKeyDown:this.handleOnKeyDown,ref:this.handleMenuButtonRef},r.a.createElement(o,null))),r.a.createElement("ul",Object.assign({},s,{ref:this._subMenus,className:"".concat(ue,"--header__menu")}),r.a.Children.map(c,this._renderMenuItem)))}}]),a}(n.Component);se.defaultProps={renderMenuContent:function(){return r.a.createElement(S.a,{className:"".concat(ue,"--header__menu-arrow")})},href:"#",uniqueId:""};var de=r.a.forwardRef((function(e,t){return r.a.createElement(se,Object.assign({},e,{focusRef:t}))}));de.displayName="HeaderMenu";var he=de,pe=(a(66),Z.a.prefix),ge=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(){var e;Object(l.a)(this,a);for(var n=arguments.length,r=new Array(n),c=0;c<n;c++)r[c]=arguments[c];return(e=t.call.apply(t,[this].concat(r))).currentPageMarked=!1,e}return Object(i.a)(a,[{key:"renderNav",value:function(e,t,a){var n=this,c=this.props.currentPage,o=0===Number(e[0].level),l=1===Number(e[0].level),i=o?X.a:he,u=e.find((function(e){return e.code===c||e.children&&e.children.find((function(e){return e.code===c}))})),s="{}";if(t){t.children;var d=Object(Q.a)(t,["children"]);s=JSON.stringify(d)}var h,p=Object(G.a)(Object(G.a)(Object(G.a)({"aria-label":o?"Menu":t.title},o?{className:"navigationMenu"}:{menuLinkName:t.title,renderMenuContent:(h=l,function(){var e=h?S.a:S.c;return r.a.createElement(e,{className:"".concat(pe,"--header__menu-arrow")})}),uniqueId:s,key:s}),a?{isCurrentPage:a}:{}),t&&t.url&&!t.voidPage?{href:t.url}:{href:"#"});return r.a.createElement(i,p,e.map((function(e){var t=!n.currentPageMarked&&u&&u.code===e.code;return t&&(n.currentPageMarked=!0),e.children?n.renderNav(e.children,e,t):r.a.createElement(Y.a,{key:JSON.stringify(e),href:e.url,isCurrentPage:t},e.title)})))}},{key:"render",value:function(){var e=this.props.navItems;return this.currentPageMarked=!1,this.renderNav(e)}}]),a}(n.Component),me={navItems:"nav-items",currentPage:"current-page"},fe=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(){return Object(l.a)(this,a),t.apply(this,arguments)}return Object(i.a)(a,[{key:"attributeChangedCallback",value:function(e,t,a){if(!Object.values(me).includes(e))throw new Error("Untracked changed attribute: ".concat(e));this.mountPoint&&a!==t&&this.render()}},{key:"connectedCallback",value:function(){this.render()}},{key:"condenseNavItems",value:function(e){var t=JSON.parse(e).map((function(e,t){return Object(G.a)(Object(G.a)({},e),{},{navIdx:t})})),a=[],n=[];return t.forEach((function(e,r){if(Number(e.level)!==a.length)for(;Number(e.level)!==a.length;)e.level>a.length?a.push(t[r-1]):a.pop();var c=a.length;c>0?(a[c-1].children||(a[c-1].children=[]),a[c-1].children=[].concat(Object(_.a)(a[c-1].children),[e])):n.push(e)})),n}},{key:"render",value:function(){var e=this.condenseNavItems(this.getAttribute(me.navItems)),t=this.getAttribute(me.currentPage);o.a.render(r.a.createElement(ge,{navItems:e,currentPage:t}),this)}}],[{key:"observedAttributes",get:function(){return Object.values(me)}}]),a}(Object(w.a)(HTMLElement));customElements.get("navigation-bar-widget")||customElements.define("navigation-bar-widget",fe);var ve=a(84),be=(a(67),function(e){var t=e.actionUrl,a=e.placeholder,c=Object(n.useState)(!1),o=Object(D.a)(c,2),l=o[0],i=o[1],u=ee()("SearchBar",l?"opened":"");return r.a.createElement("form",{action:t,className:u},l?r.a.createElement(r.a.Fragment,null,r.a.createElement("input",{type:"text",name:"search",placeholder:a}),r.a.createElement("button",{type:"submit"},r.a.createElement(ve.a,null))):r.a.createElement(ve.a,{className:"SearchBar__svg",onClick:function(){return i(!0)}}))}),Ee={actionUrl:"action-url",placeholder:"placeholder"},Oe=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(){return Object(l.a)(this,a),t.apply(this,arguments)}return Object(i.a)(a,[{key:"attributeChangedCallback",value:function(e,t,a){if(!Object.values(Ee).includes(e))throw new Error("Untracked changed attribute: ".concat(e));a!==t&&this.render()}},{key:"connectedCallback",value:function(){this.render()}},{key:"render",value:function(){var e=this.getAttribute(Ee.actionUrl),t=this.getAttribute(Ee.placeholder);o.a.render(r.a.createElement(be,{actionUrl:e,placeholder:t}),this)}}],[{key:"observedAttributes",get:function(){return Object.values(Ee)}}]),a}(Object(w.a)(HTMLElement));customElements.get("search-bar-widget")||customElements.define("search-bar-widget",Oe);a(68);var ye=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(){var e;Object(l.a)(this,a);for(var n=arguments.length,r=new Array(n),c=0;c<n;c++)r[c]=arguments[c];return(e=t.call.apply(t,[this].concat(r))).handleLogoAreaRef=function(t){var a=e.props.childNodes.filter((function(e){return"logo"===e.getAttribute("role")})),n=Object(D.a)(a,1)[0];if(n){var r=n.cloneNode(!0);r.classList.add("HeaderFragment__logo"),t.appendChild(r)}},e.handleMenuAreaRef=function(t){var a=e.props.childNodes.filter((function(e){return"navigation-bar-widget"===e.tagName.toLowerCase()})),n=Object(D.a)(a,1)[0];n&&t.appendChild(n.cloneNode(!0))},e.handleActionsRef=function(t){e.props.childNodes.filter((function(e){var t=e.tagName.toLowerCase();return"navigation-bar-widget"!==t&&"script"!==t&&"link"!==t&&"logo"!==e.getAttribute("role")||"login-button-widget"===t||"choose-language-widget"===t})).forEach((function(e){var a=e.cloneNode(!0);a.classList.contains("navbar-search")&&a.classList.add("Homepage__search"),t.appendChild(a)}))},e}return Object(i.a)(a,[{key:"render",value:function(){var e=this.props.applicationBaseURL;return r.a.createElement(m.a,{"aria-label":"Entando",className:"HeaderFragment"},r.a.createElement("a",{href:e,ref:this.handleLogoAreaRef}),r.a.createElement("div",{ref:this.handleMenuAreaRef,className:"HeaderFragment__menu-area"}),r.a.createElement("div",{ref:this.handleActionsRef,className:"bx--header__global HeaderFragment__actions-area"}))}}]),a}(n.Component);ye.defaultProps={applicationBaseURL:"http://localhost:8090/entando-de-app/"};var ke=ye,je={applicationBaseURL:"app-url"},Ne=function(e){Object(s.a)(a,e);var t=Object(d.a)(a);function a(){var e;Object(l.a)(this,a);for(var n=arguments.length,r=new Array(n),c=0;c<n;c++)r[c]=arguments[c];return(e=t.call.apply(t,[this].concat(r))).observer=null,e.childs=[],e}return Object(i.a)(a,[{key:"attributeChangedCallback",value:function(e,t,a){if(!Object.values(je).includes(e))throw new Error("Untracked changed attribute: ".concat(e));a!==t&&this.childs.length&&this.extractTemplateTag()}},{key:"extractTemplateTag",value:function(e){var t=e||this.getElementsByTagName("template")[0];if(t){var a=t.content&&t.content.children;a.length?this.childs=Object(_.a)(a):this.childs=Object(_.a)(t.childNodes),this.render()}}},{key:"activateObserve",value:function(){var e=this,t=this.querySelector("template");t?this.extractTemplateTag(t):(this.observer=new MutationObserver((function(t){t.forEach((function(t){t.addedNodes.length,t.addedNodes.length&&t.addedNodes[0].tagName&&"template"===t.addedNodes[0].tagName.toLowerCase()&&setTimeout((function(){return e.extractTemplateTag(t.addedNodes[0])}),500)}))})),this.observer.observe(this,{childList:!0}))}},{key:"connectedCallback",value:function(){this.activateObserve()}},{key:"render",value:function(){var e=this.getAttribute(je.applicationBaseURL);o.a.render(r.a.createElement(ke,{applicationBaseURL:e,childNodes:this.childs}),this)}}],[{key:"observedAttributes",get:function(){return Object.values(je)}}]),a}(Object(w.a)(HTMLElement));customElements.get("header-fragment")||customElements.define("header-fragment",Ne);"true"===Object({NODE_ENV:"production",PUBLIC_URL:"",WDS_SOCKET_HOST:void 0,WDS_SOCKET_PATH:void 0,WDS_SOCKET_PORT:void 0,REACT_APP_BASEURL:"http://localhost:8090/entando-de-app/"}).REACT_APP_LOCAL&&o.a.render(r.a.createElement(C,null),document.getElementById("root"))}},[[53,1,2]]]);
//# sourceMappingURL=main.ootb.chunk.js.map
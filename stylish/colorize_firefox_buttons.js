@namespace url(http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul);
@-moz-document url(chrome://browser/content/browser.xul),
  url(chrome://global/content/customizeToolbar.xul){

/*BLUE*/
  #tabview-button .toolbarbutton-icon,
  #save-page-button .toolbarbutton-icon,
  #developer-button .toolbarbutton-icon,
  #preferences-button .toolbarbutton-icon,
  #webrtc-status-button .toolbarbutton-icon{ 
  filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.0 \
    0.3 0.38 0.3 0.0 0.0 \
    0.3 0.3 0.38 0.0 0.3 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*LIME*/
  #pocket-button .toolbarbutton-icon,
  #context-back,
  #context-forward,
  #back-button .toolbarbutton-icon, 
  #forward-button .toolbarbutton-icon,
  #new-window-button .toolbarbutton-icon,
  #new-tab-button .toolbarbutton-icon,
  #go-button:hover,
  #downloads-button:not([attention]),
  #zoom-in-button .toolbarbutton-icon,
  #copy-button .toolbarbutton-icon,
  #add-ons-button .toolbarbutton-icon,
  #find-button .toolbarbutton-icon,
  #sidebar-button .toolbarbutton-icon	{ 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.1 \
    0.3 0.38 0.3 0.0 0.28 \
    0.3 0.3 0.38 0.0 0.0 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*RED*/
  #context-stop,
  .tabs-closebutton:hover .toolbarbutton-icon,
  .tab-close-button:hover .toolbarbutton-icon,
  #downloads-button[paused] .toolbarbutton-icon,
  #urlbar-stop-button:hover,
  #cut-button .toolbarbutton-icon,
  #zoom-out-button .toolbarbutton-icon,
  #stop-button .toolbarbutton-icon,
  #characterencoding-button .toolbarbutton-icon { 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.4 \
    0.3 0.38 0.3 0.0 0.0 \
    0.3 0.3 0.38 0.0 0.0 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*ROYAL*/
  #tabview-button .toolbarbutton-icon,
  #context-reload,
  #history-button .toolbarbutton-icon,
  #history-panelmenu .toolbarbutton-icon,
  #fullscreen-button .toolbarbutton-icon,
  #urlbar-reload-button:hover,
  #paste-button .toolbarbutton-icon,
  #reload-button .toolbarbutton-icon { 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.0 \
    0.3 0.38 0.3 0.0 0.07 \
    0.3 0.3 0.38 0.0 0.3 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*POPPY*/
  #urlbar[level="broken"] #page-proxy-favicon { 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.4 \
    0.3 0.38 0.3 0.0 0.1 \
    0.3 0.3 0.38 0.0 0.0 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*ORANGE*/
  #loop-button .toolbarbutton-icon,
  #feed-button .toolbarbutton-icon { 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.4 \
    0.3 0.38 0.3 0.0 0.2 \
    0.3 0.3 0.38 0.0 0.0 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }


/*GOLD*/
  #password-notification-icon,
  #home-button .toolbarbutton-icon,
  #open-file-button .toolbarbutton-icon,
  #email-link-button .toolbarbutton-icon { 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.4 \
    0.3 0.38 0.3 0.0 0.3 \
    0.3 0.3 0.38 0.0 0.0 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*CYAN*/
  #sync-button .toolbarbutton-icon,
  #social-share-button .toolbarbutton-icon { 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.0 \
    0.3 0.38 0.3 0.0 0.3 \
    0.3 0.3 0.38 0.0 0.3 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*PURPLE*/
  #panic-button .toolbarbutton-icon,
  #privatebrowsing-button .toolbarbutton-icon,
  #print-button .toolbarbutton-icon { 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.18 \
    0.3 0.38 0.3 0.0 0.0 \
    0.3 0.3 0.38 0.0 0.26 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }

/*AZURE*/
  #urlbar-go-button:not(:hover),
  #urlbar .autocomplete-history-dropmarker:not(:hover),
  #searchbar .searchbar-search-button:not([addengines]),
  #searchbar .search-go-button,
  #context-bookmarkpage,  
  #PanelUI-menu-button .toolbarbutton-icon, 
  #nav-bar-overflow-button .toolbarbutton-icon,
  #classic_bm_button23-toolbar-button > .toolbarbutton-icon,
  #bookmarks-menu-button:not([starred]) .toolbarbutton-icon,
  #bookmarks-button .toolbarbutton-icon,
  #bookmarks-menu-button > .toolbarbutton-menubutton-dropmarker > .dropmarker-icon 	{ 
    filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'invert\'>\
    <feColorMatrix in='SourceGraphic' type='matrix' values=\
    '0.38 0.3 0.3 0.0 0.0 \
    0.3 0.38 0.3 0.0 0.15 \
    0.3 0.3 0.38 0.0 0.3 \
    0.0 0.0 0.0 1.0 0.0'/></filter></svg>#invert") !important;
  }


/* Restore classic colors for verified identity and verified domain */

  #urlbar .verifiedDomain {
    background: linear-gradient(hsl(215,60%,92%), hsl(215,58%,88%)) !important;
    box-shadow: 0 1px 0 hsla(215,54%,33%,.05) inset !important;
    -moz-border-end-color: hsla(215,54%,33%,.2) !important;
    color: hsl(215,54%,33%) !important;
  }

  #urlbar .verifiedDomain:hover {
    background: linear-gradient(hsl(215,85%,85%), hsl(215,70%,68%)) !important;
  }

  #urlbar .verifiedDomain[open="true"],
  #urlbar .verifiedDomain:hover:active {
    background: linear-gradient(hsl(215,80%,80%), hsl(215,67%,65%)) !important;
    box-shadow: 0 1px 1px hsla(215,54%,33%,.7) inset,
      0 1px 3px 1px hsla(215,54%,33%,.5) inset !important;
  }

  #urlbar .verifiedIdentity {
    background: linear-gradient(hsl(91,70%,90%), hsl(93,60%,81%)) !important;
    box-shadow: 0 1px 0 hsla(92,81%,16%,.05) inset !important;
    -moz-border-end-color: hsla(92,81%,16%,.2) !important;
    color: #2f6600 !important;
    font-weight:bold !important;
}

  #urlbar .verifiedIdentity:hover {
    background: linear-gradient(hsl(92,69%,77%), hsl(92,44%,51%)) !important;
  }

  #urlbar .verifiedIdentity[open="true"],
  #urlbar .verifiedIdentity:hover:active {
    background: linear-gradient(hsl(92,65%,70%), hsl(92,40%,48%)) !important;
    box-shadow: 0 1px 1px hsla(92,81%,16%,.6) inset,
      0 1px 3px 1px hsla(92,81%,16%,.5) inset !important;
  }
}


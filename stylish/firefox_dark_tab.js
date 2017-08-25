@namespace url(http://www.w3.org/1999/xhtml);

@-moz-document url("about:newtab") {
  body {
    background-color: #333;
  }
  
  #newtab-customize-button:-moz-any(:hover, :active, [active]) {
    background-color: #CCC;
    border-color: #FFF;
  }
}

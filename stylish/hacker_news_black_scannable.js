@-moz-document domain('news.ycombinator.com') {

body {
    background-color: #262626 !important;
}

body > center > table, input, textarea {
    background-color: #222 !important;
}

body > center > table > tbody > tr:first-child > td {
    background-color: #ff6600 !important;
}

/* Bright text */
td.title a:link, span.comment font, span.comment font a:link, u a:link, span.yclinks a:link, body:not([id]),
td:nth-child(2):not(.subtext) > a:link, input, textarea, p > a, a > u, .c00, .c00 a:link,
a[href="http://www.ycombinator.com/apply/"] {
    color: #ccc !important;
}

.admin td {
    color: #aaa !important;
}

/* search box and comment box */
input, textarea {
    border: 1px solid #828282 !important;
}

/* upvote */
.votearrow {
    background-image: url(data:image/gif;base64,R0lGODlhCgAKAPcAAAAAAAYGBgkJCSwsLD09PUBAQEVFRVhYWGJiYmVlZQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAP8ALAAAAAAKAAoAAAgsAP8JHEiwoMGDBgsYQJggwcEDDQ8UDNCwoQCCCCo2HDhAY8MBAgmIHCnyX0AAOw==);
}

.comhead a:link, .subtext a:visited {
    color: #555;
}

.subtext a:link, .subtext a:visited {
    color: #555;
}

a:visited {
    color: #555;
    text-decoration: none;
}

.subtext {
    color: #555;
}

td {
    color: #555;
}}
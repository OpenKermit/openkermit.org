+++
title = "How this site is built"
author = ["John Goerzen"]
slug = "how-this-site-is-built"
tags = ["public"]
draft = false
+++


This site is built for modern clients using [Small Technology]({{< relref "20220129090039-old_and_small_technology" >}}).  It is served from static files, which are themselves small.  It should make no references to any resources from other servers, which helps protect the [Privacy]({{< relref "20220129192931-privacy" >}}) of visitors.

It is available on both the [small]({{< relref "20220129152526-small_web" >}}) web and [Gemini]({{< relref "20220129145525-gemini" >}}).

Each page on this site starts as an [org-roam]({{< relref "20220129190205-org_roam" >}}) note.  org-roam helps highlight, make, and maintain links between related concepts, and you will no doubt notice many, many links here.  Since org-roam is a layer atop [org-mode]({{< relref "20220129190110-org_mode" >}}), the pages are, of course, in org-mode format.

The pages are exported to Hugo-format markdown using [ox-hugo](https://ox-hugo.scripter.co/).  The export itself is inspired by Alex Kehayias' [Zettelkasten Setup post](https://www.alexkehayias.com/essays/zettelkasten-setup/).  Arne has [another example](https://github.com/bahlo/arnes-notes).


### Web site {#web-site}

For the web, searching is based on [this example by Edd Turtle](https://makewithhugo.com/add-search-to-a-hugo-site/), though with some bugfixes.  It is done client-side by the [Fuse.js](https://fusejs.io/) lightweight searching library and the [mark.js keyword highlighter](https://markjs.io/).

[Hugo](https://gohugo.io/) renders the Markdown into HTML.  The theme is a lightly-modified [Fluency](https://github.com/wayjam/hugo-theme-fluency).

These files are served by [Apache](https://httpd.apache.org/) running on [Debian]({{< relref "20220128074601-debian" >}}).


#### JavaScript used here {#javascript-used-here}

JavaScript used here is served locally and is completely optional.  Functionally, it is used to power the client-side search engine, but that's all.  No JavaScript will simply cause the search to break, but everything else continues to work.

I have tried to ensure all embedded JavaScript is [Free Software]({{< relref "20220128075132-free_software" >}}).


### Gemini site {#gemini-site}

See [Adventures Hosting My Site On Gemini]({{< relref "20240706154358-adventures_hosting_my_site_on_gemini" >}})


## Site License {#site-license}

Copyright (c) 2022-2024 John Goerzen.  All rights reserved.

Permission is required to duplicate any portion of this site; please email me with any requests.


## Searching code license {#searching-code-license}

Copyright 2022 Make with Hugo

Based on an item Copyright 2022 Edward A. Webbinaro from <https://gist.github.com/eddiewebb/735feb48f50f0ddd65ae5606a1cb41ae>

Both sources for the search code carry this license:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

----


## Links to this note {#links-to-this-note}

-   [Adventures Hosting My Site on Gemini]({{< relref "20240706154358-adventures_hosting_my_site_on_gemini" >}})

> Updated: 2024-07-06

-   [Org-Roam]({{< relref "20220129190205-org_roam" >}})

> According to its website, org-roam is "a plain-text personal knowledge management system".  It is based on the popular Zettelkasten knowledge management system, or the Roam Research website.  But because it layers atop [org-mode]({{< relref "20220129190110-org_mode" >}}) and therefore [Emacs]({{< relref "20220129153934-emacs" >}}), it has a lot of power that the others lack; for instance, integration with email and agendas.

-   [Org-Mode]({{< relref "20220129190110-org_mode" >}})

> org-mode is a toolkit for you to organize things.  It is part of [Emacs]({{< relref "20220129153934-emacs" >}}).

-   [Index]({{< relref "20220128072900-index" >}})

> Complete.Org is a personal project managed since 1994 by [John Goerzen]({{< relref "20220128073304-john_goerzen" >}}).

-   [Interesting Topics]({{< relref "20220130213225-interesting_topics" >}})

> Here are some (potentially) interesting topics you can find here:

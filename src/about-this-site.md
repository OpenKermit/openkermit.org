+++
title = "About This Site"
author = ["John Goerzen"]
slug = "about-this-site"
tags = ["public"]
draft = false
+++

## Web site {#web-site}

For the web, searching is based on [this example by Edd Turtle](https://makewithhugo.com/add-search-to-a-hugo-site/), though with some bugfixes.  It is done client-side by the [Fuse.js](https://fusejs.io/) lightweight searching library and the [mark.js keyword highlighter](https://markjs.io/).

[Hugo](https://gohugo.io/) renders the Markdown into HTML.  The theme is a lightly-modified [Fluency](https://github.com/wayjam/hugo-theme-fluency).

These files are served by [Apache](https://httpd.apache.org/) running on [Debian]({{< relref "20220128074601-debian" >}}).


### JavaScript used here {#javascript-used-here}

JavaScript used here is served locally and is completely optional.  Functionally, it is used to power the client-side search engine, but that's all.  No JavaScript will simply cause the search to break, but everything else continues to work.

I have tried to ensure all embedded JavaScript is [Free Software]({{< relref "20220128075132-free_software" >}}).


# Site License {#site-license}

Copyright (c) 2022-2026 John Goerzen.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

 + Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

 + Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in
   the documentation and/or other materials provided with the
   distribution.

 + Neither the name of Columbia University nor the names of any
   contributors may be used to endorse or promote products derived
   from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

## Searching code license {#searching-code-license}

Copyright 2022 Make with Hugo

Based on an item Copyright 2022 Edward A. Webbinaro from <https://gist.github.com/eddiewebb/735feb48f50f0ddd65ae5606a1cb41ae>

Both sources for the search code carry this license:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

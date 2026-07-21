+++
title = "Kermit FAQ"
author = ["John Goerzen"]
slug = "downloads"
tags = ["public"]
draft = false
+++

These are frequently asked questions about Kermit and [C-Kermit](ckermit).

## What is C-Kermit and how does it differ from Kermit?

C-Kermit is a communications package.  It has a text UI, a portable [scripting
language](scripting) (similar in concept to the shell, but with built-in
screen-scraping automation like expect and built-in file transfer), an
implementation of the Kermit file transfer protocol protocol, network client and
server, serial port interface, [BBS client](ckermit/bbs), and more.  Kermit runs
on hundreds of platforms, from the long-dead computers of the 1970s, pocket
calculators of the 1990s, and  modern desktop and mobile OSs.

I need to emphasize here the difference between the Kermit protocol and the
C-Kermit software. The protocol is primarily used for transferring files, but
also in the more sophisticated implementations such as C-Kermit, can be used to
perform actions on the remote such as renaming files, creating directories, and
so forth.  C-Kermit is an implementation of the protocol, but also adds a lot of
other features, such as a scripting language and X/Y/ZModem support.

C-Kermit is either directly or indirectly the modern, actively-maintained Kermit
implementation.  A fork of C-Kermit, ckwin, adds a GUI for OS/2 and both modern
and historic Windows.  To obtain C-Kermit or ckwin, see [downloads](downloads).

## How does Open Kermit relate to the Kermit Project?

A more detailed treatment of this topic is available in [history](history).

In 1981, the Kermit project began at Columbia University, and they eventually
supported and funded it.  They continued this support until 2011.  During this
time, the source to C-Kermit was available, but not under an Open Source
license.

In 2011, Columbia ended their support of Kermit, but open-sourced their
software.  Frank da Cruz, who had worked on Kermit at Columbia since the
beginning, created the Kermit Project as a volunteer, continuing development of
Kermit outside Columbia.

In 2025, Frank retired from the Kermit Project, and no releases have been made
since.

John Goerzen, who had been involved maintaining Kermit on Debian, created the
Open Kermit project to continue C-Kermit and support its modern evolution.  He
had previously been maintaining and distributing security patches to
distributions, and this was getting unwieldy.  The modern evolution included
writing a test suite, proper CI, compatibility fixes for modern platforms,
hosting on Github, and a website (this one) that is easy for a community to
maintain.  You can see all the work for C-Kermit 11 in the [changelog](changelog.md).

Both Columbia and Kermit Project's websites continue to be operational.  With
Frank's permission, John also operates mirrors of the Columbia and Kermit
Project at <https://kermit.mirrors.quux.org/>, recognizing the significant value
of the information contained therein.

## What's up with the C-Kermit version numbers?

During and after the transition from Columbia, Frank made releases variously
identified as 9.x dev, 9.x alpha, 10.x beta, etc. were created.  The last
"official" (not alpha, beta, or dev) kermit release prior to 11.0 was 9.0.302 of
July 2011 (commit 0fd869b4).

Due to the potentially-confusing history of 9.x and 10.x numbering, I opted to
just start fresh at 11.0.  This also is an accurate indication that there was
major work done in 11.0; it's not just the last 10.x beta rebadged.

The [changelog](changelog.md) also contains a summary of all the work done in
the 9.x and 10.x series since 9.0.302.

## What platforms does Kermit run on?

Pretty much every single one you've ever heard of, plus a bunch you haven't.

The tier 1 platforms for C-Kermit, which receive CI support and auto-built
binaries for each release, are Linux, MacOS, FreeBSD, NetBSD, and OpenBSD.
ckwin additionally supports 32-bit OS/2 and 32- and 64-bit Windows.  C-Kermit
contains code to support many other Unix flavors, plus some non-Unix OSs like
VMS.  While every effort is made to preserve compatibility during development,
these systems aren't readily available in CI and therefore aren't automatically
tested.  (This is, however, the state of affairs C-Kermit was in for decades, so
it's not a regression.)

Hundreds of additional platforms have been supported by C-Kermit as well as
other codebases over the years.

The [getting Kermit](downloads) page can direct you to downloads for everything,
old and new.

## Where can I get help, submit a bug report, or discuss Kermit?

See the [support page](support).

## Where can I get the source code?  Can I contribute?

See the [getting Kermit](downloads) page for software.  For the source code to
this website, see [about this site](about-this-site).

Contributions are welcome!  Both of the links above will direct you to the
appropriate Github project to send pull requests.

## Is Kermit slow?  Can I speed it up?

The original Kermit protocol used small packet sizes (less than 100 bytes) and
was compatible with links that weren't 8-bit clean.  Modern Kermit supports
packets up to roughly 9KB, sliding windows, and streaming mode (which requires
no ACKs at all).  If you are experiencing slow transfers, chances are the other
end is ancient, or you need to do some [tuning](ckermit/tuning).

## What about G-Kermit and E-Kermit?

G-Kermit was released in 1995 under the GNU GPL Open Source license.  It is a
small, command-line-only program, with no scripting language, no interactive
interface (like C-Kermit's internal CLI), etc.  Part of the reason for its
existence was to provide software that could be freely used (since C-Kermit was
a commercial product back then).  Another part was to make a smaller Kermit.

The Open Sourcing of C-Kermit in 2011 and the increased capabilities of today's
hardware means that C-Kermit needs very few resources by modern standards and
there is no need for an Open Source Kermit program beyond C-Kermit.  G-Kermit
received one update, in 2021, which adapted it for more modern C compilers,
header files, and libraries.  However, it has been effectively unmaintained
since 1995 and is probably not suited to today's modern systems.  Nevertheless,
it remains included in a number of Linux distributions and BSD port trees.

E-Kermit was designed for use in embedded devices, firmware, and so forth.  It
is not actively maintained, but likely remains useful for the purpose.  For more
information, see <https://www.kermitproject.org/ek.html>.

## Where is there more information?

See the [documentation page](doc).

## Older questions

The older Kermit Project also has a FAQ; see
<https://www.kermitproject.org/ckfaq.html>.


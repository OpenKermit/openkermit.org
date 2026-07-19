+++
title = "Kermit Downloads"
author = ["John Goerzen"]
slug = "downloads"
tags = ["public"]
draft = false
+++

Here you can find all the implementations of Kermit we know about, modern and ancient.

## Modern C-Kermit

Modern [C-Kermit](ckermit), which is primarily for Unix-type operating systems (Linux, macOS, *BSD, and so forth), can be found on the [C-Kermit Github releases page](https://github.com/OpenKermit/ckermit/releases/new).  Binaries are automatically built for major modern operating systems.  You can also clone the Git source tree from <https://github.com/openkermit/ckermit>.

The other active Kermit project is [Kermit 95](https://davidrg.github.io/ckwin/), also known as ckwin.  Kermit 95 is a fork of C-Kermit providing software for 32- and 64-bit Windows plus 32-bit OS/2.  Downloads for Windows and OS/2 can be found on the [Windows Kermit Github releases page](https://github.com/davidrg/ckwin/releases).

Vanilla C-Kermit uses operating system facilities to provide such things as SSH and terminal emulation.  These have historically not been built in to Windows or OS/2, so Kermit 95 is a GUI application providing its own terminal emulation and ssh client.

## Historical and Other Platforms

Kermit is one of the most widely-implemented protocols in history.  Many implementations were made over the decades, in many different programming langauges (some of which themselves are now defunct as well.)  See [history](history) for more details.

I need to emphasize here the difference between the Kermit _protocol_ and the Kermit _software_.  The protocol is primarily used for transferring files, but also in the more sophisticated implementations such as [C-Kermit](ckermit), can be used to perform actions on the remote such as renaming files, creating directories, and so forth.

The _software_ contains an implementation of the protocol.  Some implementations are very basic, offering only a command line interface (similar to rz/sz for ZModem).  Others, such as C-Kermit, add on a lot of other features, such as a scripting language.

C-Kermit itself was and is ported to many different platforms, including NeXT, VMS, Cray Unicos, SunOS, Solaris, and the list goes on.  Most of these are Unix platforms, but not all.

There are also many implementations of Kermit that were never derived from the C-Kermit codebase.  

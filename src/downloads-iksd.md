+++
title = "Downloading Kermit with Kermit"
author = ["John Goerzen"]
slug = "downloads-iksd"
tags = ["public"]
draft = false
+++

# Downloading Kermit with Kermit

At the [downloads page](downloads), you can see the generic instructions for downloading C-Kermit, including links to websites.  But you can also download Kermit using the Kermit protocol itself.

John Goerzen hosts the [quux.org kermit server](https://www.complete.org/quux-org-kermit-server/https://www.complete.org/quux-org-kermit-server/), which hosts mirrors of both the C-Kermit and ckwin (Kermit for Windows and OS/2, aka Kermit 95) source and binaries.

The [quux.org instructions](https://www.complete.org/quux-org-kermit-server/) give you a tutorial and more information, but here is a quick runthrough.

## Connecting

To connect, you'll start up kermit and then type `iksd /user:anonymous kermit.quux.org`.  It'll look like this:

```
$ kermit
C-Kermit 11.0.502, 2026/07/23, for Linux+SSL (64-bit)
 Copyright (C) 1985, 2025,
  Trustees of Columbia University in the City of New York.
 Copyright (C) 2025-2026, John Goerzen
 Open Source 3-clause BSD license since 2011.
Type ? or HELP for help.
(/tmp/ckermit-linux-amd64-11.0.502/) C-Kermit>iksd /user:anonymous kermit.quux.org
 DNS Lookup...  Trying 51.79.38.140...  Reverse DNS Lookup... (OK)
Connecting to host glockenspiel.complete.org:1649
 Escape character: Ctrl-\ (ASCII 28, FS): enabled
Type the escape character followed by C to get back,
or followed by ? to see other options.
----------------------------------------------------

 >>> Welcome to the Internet Kermit Service at kermit.quux.org <<<

To log in, use 'anonymous' as the username, and any non-empty password

Internet Kermit Service ready at Thu Jul 23 22:04:42 2026
C-Kermit 11.0.502, 2026/07/23
kermit

Enter e-mail address as Password: blah

Anonymous login.

You are now connected to the quux kermit server.

Try commands like HELP, cd gopher, dir, and the like.  Use INTRO
for a nice introduction.
```

Let's explore a bit:

```
(~/) IKSD>dir
drwxrwsr-x       540  2024-07-06 23:57:39  gopher.quux.org
drwxr-xr-x       114  2026-07-24 01:56:43  mirrors
(~/) IKSD>cd mirrors
Here are various mirrors:

cu-kermit-ftp - A symlink to
   kermit-websites-mirror/ftp.columbia.edu/kermit, which contains a the last
   archive of the Columbia Kermit FTP site (from Internet Archive)

cu-kermit-ftp-www - A symlink to 
   kermit-websites-mirror/www.columbia.edu/kermit/ftp, which contains the
   extended kermit archives.

kermit/ - From ftp.kermitproject.org

kermit-websites-mirror/ - The www.kermitproject.org and www.columbia.edu/kermit
   mirrors

kermit-archives/ - Contains dar (like tar/zip) archives of the above directories
   over time

nncp/ - The NNCP project, from nncpgo.org

openkermit/ - The Open Kermit project, home of current Kermit development
(~/mirrors/) IKSD>cd openkermit

Welcome to the mirror area related to the Open Kermit project,
https://www.openkermit.org/.

Open Kermit projects can be found here:

  ckermit-releases/   All release files (sources and binaries) for C-Kermit
  git/ckermit/        Git repo for C-Kermit
  git/openkermit.org/ Git repo for the www.openkermit.org website

Additionally, while not Open Kermit projects, for convenience, I also
have C-Kermit for Windows and OS/2 (ckwin aka Kermit 95) here:

  ckwin-releases/     All release files for Kermit 95
  git/ckwin/          Git repo for Kermit 95
(~/mirrors/openkermit/) IKSD>dir
drwxrwxr-x        28  2026-07-24 00:07:10  ckermit-releases
drwxrwxr-x       176  2026-07-24 02:55:32  ckwin-releases
drwxrwxr-x        52  2026-07-24 02:57:25  git
```

Let's download a C-Kermit release.

```
(~/mirrors/openkermit/) IKSD>cd ckermit-releases/v11.0.502
/mirrors/openkermit/ckermit-releases/v11.0.502
(~/mirrors/openkermit/ckermit-releases/v11.0.502/) IKSD>dir
-rw-rw-r--   1692880  2026-07-24 00:07:08  ckermit-freebsd-amd64-11.0.502.tar.gz
-rw-rw-r--   1876493  2026-07-24 00:07:09  ckermit-linux-amd64-11.0.502.tar.gz
-rw-rw-r--   4544349  2026-07-24 00:07:09  ckermit-linux-amd64-static-11.0.502.tar.gz
-rw-rw-r--   1849844  2026-07-24 00:07:09  ckermit-linux-arm64-11.0.502.tar.gz
-rw-rw-r--   4853920  2026-07-24 00:07:09  ckermit-linux-arm64-static-11.0.502.tar.gz
-rw-rw-r--   1556652  2026-07-24 00:07:10  ckermit-macos-arm64-11.0.502.tar.gz
-rw-rw-r--   1732908  2026-07-24 00:07:10  ckermit-netbsd-amd64-11.0.502.tar.gz
-rw-rw-r--   1840705  2026-07-24 00:07:10  ckermit-openbsd-amd64-11.0.502.tar.gz
-rw-rw-r--   3201934  2026-07-24 00:07:08  ckermit-v11.0.502.tar.gz
-rw-rw-r--   3249045  2026-07-24 00:07:08  ckermit-v11.0.502.zip
-rw-rw-r--      1012  2026-07-24 00:07:10  SHA256SUMS
(~/mirrors/openkermit/ckermit-releases/v11.0.502/) IKSD>send ckermit-linux-amd64-static-11.0.502.tar.gz
�Return to your local Kermit and give a RECEIVE command.

KERMIT READY TO SEND...
...
 SENT: [/mirrors/openkermit/ckermit-releases/v11.0.502/ckermit-linux-amd64-static-11.0.502.tar.gz] To: [/tmp/ckermit-linux-amd64-11.0.502/ckermit-linux-amd64-static-11.0.502.tar.gz] (OK)
```

You can download a Git repo also.

```
(~/mirrors/openkermit/ckermit-releases/v11.0.502/) IKSD>cd ../../git 
/mirrors/openkermit/git
(~/mirrors/openkermit/git/) IKSD>dir
drwxrwxr-x      1460  2026-07-24 00:10:11  ckermit
drwxrwxr-x       470  2026-07-24 02:57:30  ckwin
drwxrwxr-x       198  2026-07-24 00:10:17  openkermit.org
(~/mirrors/openkermit/git/) IKSD>send /dotfiles /recursive ckermit
```

By default, `SEND /RECURSIVE` omits files and directories that begin with `.`;
the `.git` directory is important, so `/DOTFILES` includes it.  If you don't
care about the history, though, you can leave it off.

Note: if you get a weird error at this point, make sure you are using at least
C-Kermit 11.0.503; some earlier versions' defaults can interfere with a recursive download.


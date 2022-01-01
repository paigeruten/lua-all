# All Versions of Lua

This repo contains every version of [Lua](https://www.lua.org/) that has been
released. It is [lua-all.tar.gz](https://www.lua.org/ftp/lua-all.tar.gz) in the
form of a Git repo: each commit contains the source code of a particular
version of Lua, and the commits are chained together in the order that the
versions were released.

All commits are tagged with the Lua version. Use `git tag` to list all
available versions, and `git checkout 5.3.4` to check out the source code for
version 5.3.4, for example.

`makerepo.rb` is a Ruby script that generates this repo from the contents of
`lua-all.tar.gz`.

## Versions

Click on a version number below to browse the source code for that version.
(Indented versions are branching points.)

* [1.0](https://github.com/paigeruten/lua-all/tree/1.0) (1993-07-28)
* [1.1](https://github.com/paigeruten/lua-all/tree/1.1) (1994-07-08)
* [2.1](https://github.com/paigeruten/lua-all/tree/2.1) (1995-02-07)
* [2.2](https://github.com/paigeruten/lua-all/tree/2.2) (1995-11-28)
* [2.4](https://github.com/paigeruten/lua-all/tree/2.4) (1996-05-14)
* [2.5](https://github.com/paigeruten/lua-all/tree/2.5) (1996-11-19)
* [2.5.1](https://github.com/paigeruten/lua-all/tree/2.5.1) (1996-11-20)
* [3.0](https://github.com/paigeruten/lua-all/tree/3.0) (1997-07-01)
* [3.1](https://github.com/paigeruten/lua-all/tree/3.1) (1998-07-11)
* [3.2](https://github.com/paigeruten/lua-all/tree/3.2) (1999-07-08)
* [3.2.1](https://github.com/paigeruten/lua-all/tree/3.2.1) (1999-11-25)
* [3.2.2](https://github.com/paigeruten/lua-all/tree/3.2.2) (2000-02-22)
* [4.0](https://github.com/paigeruten/lua-all/tree/4.0) (2000-11-06)
* [4.0.1](https://github.com/paigeruten/lua-all/tree/4.0.1) (2002-07-04)
* [5.0](https://github.com/paigeruten/lua-all/tree/5.0) (2003-04-11)
* [5.0.1](https://github.com/paigeruten/lua-all/tree/5.0.1) (2003-11-25)
* [5.0.2](https://github.com/paigeruten/lua-all/tree/5.0.2) (2004-03-17)
* [5.0.3](https://github.com/paigeruten/lua-all/tree/5.0.3) (2006-06-26)
* [5.1](https://github.com/paigeruten/lua-all/tree/5.1) (2006-02-21)
* [5.1.1](https://github.com/paigeruten/lua-all/tree/5.1.1) (2006-06-07)
* [5.1.2](https://github.com/paigeruten/lua-all/tree/5.1.2) (2007-03-29)
* [5.1.3](https://github.com/paigeruten/lua-all/tree/5.1.3) (2008-01-21)
* [5.1.4](https://github.com/paigeruten/lua-all/tree/5.1.4) (2008-08-18)
    * [5.1.5](https://github.com/paigeruten/lua-all/tree/5.1.5) (2012-02-17)
* [5.2.0](https://github.com/paigeruten/lua-all/tree/5.2.0) (2011-12-16)
* [5.2.1](https://github.com/paigeruten/lua-all/tree/5.2.1) (2012-06-08)
* [5.2.2](https://github.com/paigeruten/lua-all/tree/5.2.2) (2013-03-21)
* [5.2.3](https://github.com/paigeruten/lua-all/tree/5.2.3) (2013-11-11)
    * [5.2.4](https://github.com/paigeruten/lua-all/tree/5.2.4) (2015-03-07)
* [5.3.0](https://github.com/paigeruten/lua-all/tree/5.3.0) (2015-01-12)
* [5.3.1](https://github.com/paigeruten/lua-all/tree/5.3.1) (2015-06-10)
* [5.3.2](https://github.com/paigeruten/lua-all/tree/5.3.2) (2015-11-25)
* [5.3.3](https://github.com/paigeruten/lua-all/tree/5.3.3) (2016-05-30)
* [5.3.4](https://github.com/paigeruten/lua-all/tree/5.3.4) (2017-01-30)
    * [5.3.5](https://github.com/paigeruten/lua-all/tree/5.3.5) (2018-06-26)
    * [5.3.6](https://github.com/paigeruten/lua-all/tree/5.3.6) (2020-09-14)
* [5.4.0](https://github.com/paigeruten/lua-all/tree/5.4.0) (2020-06-18)
* [5.4.1](https://github.com/paigeruten/lua-all/tree/5.4.1) (2020-09-30)
* [5.4.2](https://github.com/paigeruten/lua-all/tree/5.4.2) (2020-11-13)
* [5.4.3](https://github.com/paigeruten/lua-all/tree/5.4.3) (2021-03-15)

## Original `README`

> To accompany the presentation of the evolution of Lua at HOPL III,
> here are all releases of Lua. Only the source code is included; for
> documentation and other files, see the original tarballs at Lua.org.
>
> The code has been slightly updated to compile and run with gcc 4. As a
> testimony to the portability of Lua, the required changes were minimal:
> just a trivial change in iolib.c before Lua 2.5. The differences between
> the original code and the updated code are in DIFFS in each directory.
>
> No attempt has been made to ensure warning-free compilations. A few,
> mostly trivial, changes would be needed for that, but it is interesting
> to see the number of warnings decrease to zero in later versions.
>
> To build each release, just go its directory and type 'make'. This will
> run a simple test for lua and luac (when available). To build and test
> all releases, just type 'make' at the top level directory.
>
> The simple Makefiles build Lua without any special options. For those,
> see the original tarballs.
>
> Lua 3.2 may crash when run if compiled with gcc 4. It runs fine in earlier gcc.
>
> Enjoy!
> -- The Lua team


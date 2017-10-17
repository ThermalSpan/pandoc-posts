---
extends: default.liquid

title: Website Setup
---

# Website Setup

## Introduction
This post documents how my website is built and deployed. This document is a living document and will change as my process changes. I think it makes an interesting post, but it exists primarily as a reference for myself.

The website draws material from lots of website, but the core principle is simple. I have several component projects that all ditto their build artifacts into a common directory. I then run a static site generator on that directory to produce the final website.

The rest of the post will detail the tool and dependencies in enough detail for me (and others) to replicate the website in another environment.

## Tools

### Rust Toolchain

You will need the rust toolchain installed (rustc and cargo.) I recomend using [rustup](https://www.rustup.rs). I use nightly builds and update frequently. Currently I am running:

```
active toolchain
----------------

nightly-x86_64-apple-darwin (default)
rustc 1.22.0-nightly (7778906be 2017-10-14)
```

### Cobalt

[cobalt.rs](https://github.com/cobalt-org/cobalt.rs) is a static site generator. I am currently using:

    Cobalt 0.7.2

The best way to install cobalt is probably:

    cargo install cobalt-bin

### pandoc

[pandoc](https://pandoc.org) is best described on their homepage:

> If you need to convert files from one markup format into another, pandoc is your swiss-army knife.

The version of pandoc I am using is:

    pandoc 1.19.2.1
    Compiled with pandoc-types 1.17.0.5, texmath 0.9, skylighting 0.1.1.4

I installed pandoc using brew:

    brew install pandoc

### blockpass

[blockpass](https://github.com/ThermalSpan/blockpass) is a small utility I wrote. You can install by downloading and building it:

    git clone https://github.com/ThermalSpan/blockpass.git
    cd blockpass
    cargo install

### divmaker

[divmaker](https://github.com/ThermalSpan/divmaker) is a small utility I wrote. You can install by downloading and building it:

    git clone https://github.com/ThermalSpan/divmaker.git
    cd divmaker
    cargo install

### LaTeX

You will need a TeX distribution installed for several of the projects. I have been using MacTeX 2016 currently. In particular the pdflatex version I have been using is:

    pdfTeX 3.14159265-2.6-1.40.17 (TeX Live 2016)
    kpathsea version 6.2.2
    ...
    Compiled with libpng 1.6.21; using libpng 1.6.21
    Compiled with zlib 1.2.8; using zlib 1.2.8
    Compiled with xpdf version 3.04

### make

This might to much information, but it may help debug something in the future. I am currently using:

    GNU Make 3.81

## Dependences

These are are the projects that contribute content to the website.

### KaTeX

[KaTeX](https://github.com/Khan/KaTeX) is a javascript library for math rendering. From Khan Academy! I am currently using the following tag:

    v0.7.1

Pandoc supports KaTeX in html, so that's how I use it.

### pandoc-posts

[pandoc-posts](https://github.com/ThermalSpan/pandoc-posts) is the repository where most of the posts live. Top of tree on the master branch should be sufficient. Drafts live in other branches.

### resume

[resume](https://github.com/ThermalSpan/resume) is the respository where I keep my resume. 

### thermalspan.github.io-source

[thermalspan.github.io-source](https://github.com/ThermalSpan/thermalspan.github.io-source) is the kitchen sink for this website. All the templates, misc pages, and such live here. And for now the "build system" does too, but I'd like to rip that out.

## How to Build and Deploy

First checkout thermalspan.github.io-source, and we should be able to build from there. Note that the build script expects a checkout of [thermalspan.github.io](https://github.com/ThermalSpan/thermalspan.github.io) next to it. When the build script is passed 'deploy' it will, among other things, set copy the result of the build over to the thermalspan.github.io directory. It is also important to note that the build script creates an `env.liquid` file. This file contains, among other things, the base url to use for the build. If building local, this is the directory the deploy lives in. For a deploy build this is the URL the website lives at. After buiding the site, we commit everything to the repo that hosts the site and push it.

    git clone https://github.com/ThermalSpan/thermalspan.github.io-source.git
    cd thermalspan.github.io-source
    ./build.zsh deploy
    cd ../thermalspan.github.io
    git add -A
    git commit -m "Another day, Another deployment"
    git push origin master





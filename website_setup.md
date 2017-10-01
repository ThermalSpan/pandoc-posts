---
extends: default.liquid

title: Website Setup
---

# Website Setup
This post documents how my website is built and deployed. This document is a living document and will change as my process changes.

I have several component projects that all ditto their build artifacts into a common directory. I then run a static site generator on that directory to produce the final website.

## Tools

You will need the following special tools in your `PATH`.

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

[blockpass](https://github.com/ThermalSpan/blockpass) is a small utility I wrote. Top of tree should be fine for now. You can install by downloading and building it:

    git clone https://github.com/ThermalSpan/blockpass.git
    cd blockpass
    cargo install

## Dependences

These are are the projects that contribute content to the website.

### KaTeX

[KaTeX](https://github.com/Khan/KaTeX) is a javascript library for math rendering. From Khan Academy! I am currently using the following tag:

    v0.7.1

Pandoc supports KaTeX in html, so that's how I use it.

### pandoc-posts

[pandoc-posts](https://github.com/ThermalSpan/pandoc-posts) is the repository where most of the posts live. Top of tree on the master branch should be sufficient. Drafts live in other branches.

### thermalspan.github.io-source

[thermalspan.github.io-source](https://github.com/ThermalSpan/thermalspan.github.io-source) is the kitchen sink for this website. All the templates, misc pages, and such live here. And for now the "build system" does too, but I'd like to rip that out.

## How to Build and Deploy

First checkout thermalspan.github.io-source, and we should be able to build from there. Note that the build script expects a checkout of [thermalspan.github.io](https://github.com/ThermalSpan/thermalspan.github.io) next to it. When the build script is passed 'deploy' it will, among other things, set copy the result of the build over to the thermalspan.github.io directory. From there we commit everything and push it.

    git clone https://github.com/ThermalSpan/thermalspan.github.io-source.git
    cd thermalspan.github.io-source
    ./build.zsh deploy
    cd ../thermalspan.github.io
    git add -A
    git commit -m "Another day, Another deployment"
    git push origin master





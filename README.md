# pngcrush Docker container

[Docker](https://www.docker.io/) container for [http://www.amazon.com/gp/feature.html?docId=1000765211). Has KindleGen set as the entrypoint.

    docker run jagregory/kindlegen

    *************************************************************
     Amazon kindlegen(Linux) V2.9 build 0730-890adc2
     A command line e-book compiler
     Copyright Amazon.com and its Affiliates 2013
    *************************************************************

    Usage : kindlegen [filename.opf/.htm/.html/.epub/.zip or directory] [-c0 or -c1 or c2] [-verbose] [-western] [-o <file name>]

A `/source` directory is created in the container, which can be mapped for use with relative file paths. kindlegen will always be run from the `/source` directory in the container.

    docker run -v `pwd`:/source jagregory/kindlegen input.epub

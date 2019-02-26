# unoconv-node

A base environment for GradApp/doc2pdf

## Build

```
$ docker build -t unoconv-node .
```

## Usage

Intended primarily as a base image from which to create other application images. Eg.

```Dockerfile
FROM unoconv-node

# Do something
```

## License

This image contains the following OpenSource software packages and is subject to their licenses:

- [Ubuntu OS](https://www.ubuntu.com/about/about-ubuntu/licensing)
- [LibreOffice](https://www.libreoffice.org/about-us/licenses/) - Mozilla Public License v2.0
- [NodeJS](https://raw.githubusercontent.com/nodejs/node/master/LICENSE)


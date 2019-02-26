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

## Notes

Ubuntu 18.04LTS natively includes LibreOffice 6.0.x.
However, this version includes [a bug](https://bugs.documentfoundation.org/show_bug.cgi?id=118373) not fixed until 6.1.5.
This image therefore uses the official LibreOffice PPA installation.


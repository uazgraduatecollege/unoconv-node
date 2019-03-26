# Start with Ubuntu so we can install unoconv & libreoffice easily
FROM ubuntu:18.04

# Metadata
LABEL org.label-schema.name = "UA Graduate College: Unoconv Node"
LABEL org.label-schema.description = "A NodeJS environment with Unoconv installed. The base image for DocPoxy JS"
LABEL org.label-schema.vcs-url = "https://github.com/uazgraduatecollege/unoconv-node"
LABEL org.label-schema.vendor = "University of Arizona Graduate College IT"

# We want libreoffice 6.1.5+, so we need to use the PPA
RUN apt-get update && apt-get install -y curl git software-properties-common sudo
RUN apt-add-repository -y ppa:libreoffice/ppa
RUN apt-get update && apt-get install -y unoconv

# Install Node 10.x+
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs

# Install pm2
RUN npm install -g pm2@latest

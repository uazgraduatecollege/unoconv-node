# Start with Ubuntu so we can install unoconv & libreoffice easily
FROM ubuntu:18.04

# We want libreoffice 6.1.5+, so we need to use the PPA
RUN apt-get update && apt-get install -y curl software-properties-common sudo
RUN apt-add-repository -y ppa:libreoffice/ppa
RUN apt-get update && apt-get install -y unoconv

# Install Node 10.x+
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs

# Install pm2
RUN npm install -g pm2@latest


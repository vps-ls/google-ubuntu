FROM ubuntu:22.04

RUN apt-get update

RUN apt-get install -y wget gnupg ca-certificates curl unzip vim

RUN cd /tmp/

RUN wget https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_119.0.6045.105-1_amd64.deb

RUN apt-get install -y ./google-chrome-stable_119.0.6045.105-1_amd64.deb

RUN wget https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/119.0.6045.105/linux64/chromedriver-linux64.zip

RUN unzip chromedriver-linux64.zip \
    && mv chromedriver-linux64/chromedriver /usr/local/bin/

RUN rm -rf /tmp/*
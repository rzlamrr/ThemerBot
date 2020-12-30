FROM node:lts

RUN apt-get -qqy update \
&& apt-get -qqy upgrade \
&& apt-get -qqy clean \
&& apt autoremove --yes

RUN git clone https://github.com/rzlamrr/ThemerBot /home/themerbot
WORKDIR /home/themerbot

RUN npm install
RUN npm install --only=dev --ignore-scripts

CMD ["npm", "start"]

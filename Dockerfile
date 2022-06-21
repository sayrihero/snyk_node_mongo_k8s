FROM node:10.4

RUN mkdir /usr/src/node
RUN mkdir /tmp/extracted_files
COPY . /usr/src/node
WORKDIR /usr/src/node

RUN npm update
RUN npm install
EXPOSE 3000

ENTRYPOINT ["npm", "start"]

FROM node:6.9.1

RUN mkdir -p /usr/src/mysportsstore

COPY dist /usr/src/mysportsstore/app

COPY authMiddleware.js /usr/src/mysportsstore/
COPY data.js /usr/src/mysportsstore/
COPY deploy-server.js /usr/src/mysportsstore/server.js
COPY deploy-package.json /usr/src/mysportsstore/package.json

WORKDIR /usr/src/mysportsstore

RUN npm install

EXPOSE 3000

EXPOSE 3500

CMD ["npm", "start"]

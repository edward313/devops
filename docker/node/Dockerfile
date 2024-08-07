FROM node:16
WORKDIR /opt
COPY ./build/ .
RUN ls
COPY ./appServer.js .
COPY ./package.json .
RUN npm install --production --force 
CMD [ "node", "appServer.js" ]
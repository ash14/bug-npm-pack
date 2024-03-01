FROM node:20-alpine3.19
RUN apk add jq

WORKDIR /my_package
COPY my_package/package.json my_package/package-lock.json ./
RUN npm install
RUN npm shrinkwrap
RUN npm pack

WORKDIR /my_app
RUN npm install ../my_package/my_package-1.0.0.tgz

COPY test.sh .
ENTRYPOINT [ "/bin/sh" ]
CMD [ "test.sh" ]

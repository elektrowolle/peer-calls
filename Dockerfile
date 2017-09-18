FROM node:8.5-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
ADD . /usr/src/app

# Install app dependencies
RUN npm install
ENV PORT 5000


EXPOSE 5000
CMD [ "npm", "start" ]
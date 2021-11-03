# PULL OFFICIAL BASE IMAGE
FROM node:13.12.0-alpine

# SET WORKING DIRECTORY
WORKDIR /app

# ADD `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN npm install --silent

# ADD APP
COPY . ./

CMD ["npm","start"]
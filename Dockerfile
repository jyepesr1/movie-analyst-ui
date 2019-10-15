FROM node:10-alpine

# Create app directory
RUN mkdir -p /home/node/movie-analyst-ui/ && chown -R node:node /home/node/

WORKDIR /home/node/movie-analyst-ui

COPY package*.json *yarn* ./

RUN yarn install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "yarn", "dev" ]
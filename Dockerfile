FROM node:latest
RUN git clone https://github.com/DVictorB/DV.Balboa.git .
WORKDIR /src
COPY package*.json ./
RUN npm install
EXPOSE 12801
CMD nodemon /src/index.js
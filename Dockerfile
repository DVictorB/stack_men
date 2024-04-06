FROM node:latest
RUN git clone https://github.com/DVictorB/stack_men.git .
WORKDIR /src
COPY package*.json ./
RUN npm install
EXPOSE 5000
CMD nodemon /src/index.js
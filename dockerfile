FROM node:13-alpine
LABEL Name="my-app" Version=1.0.0
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN yarn install
RUN yarn add webpack -dev
EXPOSE 1993
CMD yarn start

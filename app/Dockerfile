FROM node:alpine

RUN mkdir /app
WORKDIR /app


ADD ./src/ /app/

RUN npm install
RUN npm install -g forever

EXPOSE 8888

RUN chmod +x start_app.sh

ENV PATH /app/node_modules/.bin:$PATH

CMD "./start_app.sh"

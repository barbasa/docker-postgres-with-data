FROM node:alpine

RUN mkdir /app
WORKDIR /app


ADD ./src/ /app/

EXPOSE 8888

RUN chmod +x start_app.sh

ENV PATH /app/node_modules/.bin:$PATH

CMD "./start_app.sh"

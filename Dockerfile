FROM node:8

RUN npm install -g npx

WORKDIR /usr/src/app

COPY . .
RUN make reset

EXPOSE 8080
CMD [ "make", "run" ]

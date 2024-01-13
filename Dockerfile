FROM node

WORKDIR /workspace

RUN npm i -g npm@latest

WORKDIR /code

COPY bin .

RUN npm i

# For doc purpose only
# RUN npm create vite@latest <app_name> -- --template vue-ts

CMD "npm run dev"
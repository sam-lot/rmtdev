FROM node

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN groupadd -r devgroup && useradd -r -g devgroup -m dev

RUN chown -R dev:devgroup /app

EXPOSE 5173

USER dev

CMD npm run dev
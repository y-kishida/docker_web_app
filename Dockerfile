FROM node:12

# アプリケーションディレクトリの作成する
WORKDIR /usr/src/app

#アプリケーションの依存関係をインストールする
COPY package*.json ./

RUN npm install
# 本番用にコードを作成している場合
# RUN npm install --only=production

# アプリケーションのソースをバンドルする
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
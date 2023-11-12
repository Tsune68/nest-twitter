# Dockerfile

# ベースとなるイメージを指定
FROM node:lts-alpine

# 作業ディレクトリを指定
WORKDIR /app

# 依存関係をコピーしてインストール
COPY package*.json ./
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションをビルド
RUN npm run build

# アプリケーションを起動
CMD ["npm", "run", "start:prod"]

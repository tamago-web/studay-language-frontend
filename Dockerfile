# ベースイメージの設定
FROM node:18-alpine

# 作業ディレクトリの設定
WORKDIR /app

# 依存関係をインストールするためにpackage.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# npmの依存パッケージをインストール
RUN npm install

# 残りのプロジェクトファイルをコピー
COPY . .

# 開発サーバーを起動
CMD ["npm", "run", "dev"]
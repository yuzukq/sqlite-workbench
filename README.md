# 実機を触ろう!!!
座学に意味はないです(あります．)．ですが実際に触って手を動かした方が解像度高く定着するので実機を触りましょう！

### 7/10追記．期末試験過去問問題のテーブルを追加しました．
大会表，競技場表，チーム表が利用可能です．
```sql
SELECT * FROM 大会表;
SELECT * FROM 競技場表;
SELECT * FROM チーム表;
```

# Usage
## 1. これをクローン
```bash
git clone https://github.com/yuzukq/sqlite-workbench.git
cd sqlite-workbench
```

## 2. コンテナを稼働してSQLiteに接続

```bash
docker compose run --rm sqlite-db
```

## 3. 基本的なコマンド

```sql
-- テーブル一覧
.tables

-- スキーマ確認
.schema

-- データ確認
SELECT * FROM メンバ表;
SELECT * FROM 担当表;
SELECT * FROM ジャンル表;

-- 演習問題の例
SELECT AVG(年齢) FROM メンバ表 WHERE 出身='千葉';
```

## 4. 環境を停止

```bash
docker-compose down
```

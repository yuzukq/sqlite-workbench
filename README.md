# 実機を触ろう!!!
座学に意味はないです(あります．)．ですが実際に触って手を動かした方が解像度高く定着するので実機を触りましょう！

## 1. これをクローン
```bash
git clone https://github.com/yuzukq/sqlite-workbench.git
cd sqlite-workbench
```

## 2. 環境を起動

```bash
docker-compose up -d
```

## 3. SQLiteに接続

```bash
docker exec -it database-exercise sqlite3 /workspace/repo2.sqlite3
```

## 4. 基本的なコマンド

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

## 5. 環境を停止

```bash
docker-compose down
```

## mysql-tutorial

### how to use
```
# 起動
docker compose up -d

# ログイン
docker compose exec db mysql -u user -p study

# ログ確認
docker compose logs -f

# 終了
docker compose down
```

### Sample SQL
```
# データベース一覧
show databases;

# 使用データベース指定
use study;

# テーブル一覧
show tables;

# テーブルスキーマ確認
describe users;
describe orders;

# テーブル参照
## 全選択
select * from users;
select * from orders;

# id=1のデータを取り出す
select * from users where id = 1;

# order_id=1のデータを取り出す
select * from orders where order_id = 1;

# カラム指定
select id, name from users;

# age順にソート(昇順/降順)
select * from users order by age;
select * from users order by age desc;
```

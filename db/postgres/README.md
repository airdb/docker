postgres 是一个开源的对象-关系型数据库管理系统 (ORDBMS)。

```bash
psql -Upostgres

psql -h127.0.0.1 -p5432 -Upostgres -Wpasswd
```

```sql
## 查看数据库
\l

## 连接数据库
\c noah

## 查看有哪些表
noah=# \dt
```

```sql
# 设置时区
SET TIMEZONE='Asia/Singapore';
```


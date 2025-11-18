postgres 是一个开源的对象-关系型数据库管理系统 (ORDBMS)。

```bash
psql -Upostgres

psql -h127.0.0.1 -p5432 -Upostgres -Wpasswd
```

```sql
\l          -- 列出所有数据库（List Databases）
\c <数据库名> -- 切换到指定数据库（Connect to database），例如 \c mydb
\d          -- 列出当前数据库中所有的表、视图、序列等
\d <表名>   -- 查看指定表的结构（Describe table），例如 \d users
\d+ <表名>  -- 查看表的详细结构，包括存储信息和注释
\dt         -- 只列出所有表（Table）
\dv         -- 只列出所有视图（View）

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


# MySLQ常用命令 
```mysql
# 创建数据库 MySQL Schema
create schema `ruoyi-vue-pro` collate utf8mb4_unicode_ci;

# 查看表结构 show table status WHERE 1=1 and NAME like '[tableName]';
show table status WHERE 1=1 and NAME like 'system_%';

# 查看表结构 SHOW FULL TABLES FROM [schema] like  '[tableName]';
SHOW FULL TABLES FROM `ruoyi-vue-pro` like 'system_%';

# 查看表结构的列信息 SHOW FULL COLUMNS FROM [tableName] FROM [schema];
SHOW FULL COLUMNS FROM system_menu FROM `ruoyi-vue-pro`;

```

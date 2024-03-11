# MySQL FAQ
```mysql
# 1、MySQL隐式转换  长整型 转 字符串 查出的数据不对  其中v0是varchar(100) 查出了 1648618333307314179 和 1648618333307314180的记录
select * from casbin_rule a where a.ptype = 'g' and v0 = 1648618333307314199;  -- 使用1648618333307314171~1648618333307314199结果都一样

# 2、数据库同步异常
# [Warning] Cannot replicate to server with server_uuid='xxx' because the present server has purged required binary logs. 
# The connecting server needs to replicate the missing transactions from elsewhere, or be replaced by a new server created from a more recent backup. 
# To prevent this error in the future, consider increasing the binary log expiration period on the present server. 
# The missing transactions are 'xxx'.
SHOW PROCESSLIST; -- 列表中的“Info”字段内容大部分都是“commit”


```
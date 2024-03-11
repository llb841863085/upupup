# Shell基础命令
```shell
# 1、sed替换文件内容
# 这个函数使用sed命令在文件/etc/nginx/conf.d/nginx.conf中搜索并替换proxy_pass指令的值。具体来说，它将proxy_pass的值修改为包括几个额外的proxy_set_header指令的新值。这些proxy_set_header指令用于设置通过nginx代理的请求的头部信息。这个函数的作用是在nginx配置中启用对请求来源的识别和转发。
sed -i "s#proxy_pass http://my-service:8080/;#\
\tproxy_set_header Host $host;\
\tproxy_set_header X-Real-IP $remote_addr;\
\tproxy_set_header REMOTE-HOST $remote_addr;\
\tproxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;\
\thttp://my-service:8080/;#g" \
/etc/nginx/conf.d/nginx.conf
# 1.使用sed的 -i 选项直接在原始文件（/etc/nginx/conf.d/nginx.conf）中进行编辑。
# 2.s 表示替换操作。
# 3.# 作为搜索和替换字符串中的分隔符。
# 4.搜索nginx配置中所有匹配 proxy_pass http://my-service:8080/; 的行。
# 5.将其替换为以下内容：
#   - 添加四个 proxy_set_header 指令以设置请求头部信息，包括Host、X-Real-IP、REMOTE-HOST和X-Forwarded-For。
#   - 保留原有的 proxy_pass 配置值 http://my-service:8080/;。
# 通过此命令，可以确保每个经过nginx代理的请求都携带了详细的源地址信息。

# 2、awk
awk ' { if ($(NF-1)>0.5) print $(NF-1)    $NF }' access.log
```
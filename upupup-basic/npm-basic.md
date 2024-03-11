# Npm基础命令
```shell
npm config set save-prefix='~'
npm i --legacy-peer-deps --unsafe-perm --registry=http://localhost:7000 aaa/bbb@1.0.0 --save 
npm i --legacy-peer-deps --unsafe-perm --registry=http://localhost:7000 aaa/bbb@1.0.0  --save-exact=true --loglevel=http --sass_binary_site=https://npm.taobao.org/mirrors/node-sass

npm uninstall aaa/bbb@1.0.0

npm list aaa/bbb@1.0.0

npm cache clean --force
```

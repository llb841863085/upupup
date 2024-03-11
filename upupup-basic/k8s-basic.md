# K8S基础命令
```shell
# 1、创建资源对象
## 1.1、根据指定yaml文件创建
kubectl create -f [xxx].yaml
## 1.2、根据目录下的所有yaml、yml、 json文件创建
kubectl create -f <directory>

# 2、查看资源对象
## 2.1、查看pod列表信息
kubectl get pods -owide
## 2.2、查看service列表信息
kubectl get service

# 3、查看资源详情
## 3.1、查看某pod的详细信息
kubectl describe pods <pod-name>
## 3.2、以yaml的格式显示pod的详细信息
kubectl get pods <pod-name> -oyaml

# 4、修改deployment的yaml文件
## 4.1、查看pod的yaml文件，并输出到本地
kubectl -n <namespace> get deployment <pod-name> -o yaml > [xxx].yaml
## 4.2、编辑本地yaml文件
vim [xxx].yaml
## 4.3、将本地修改后的yaml文件应用到集群中
kubectl apply -f [xxx].yaml

# 5、下载容器文件到本地
## 5.1、从容器中复制文件到本地
kubectl cp <pod-name>-yyy:logs/[xxx].log ./[xxx].log
## 5.2、下载文件到本地
sz ./[xxx].log

# 6、查看pod日志
kubectl -n <namespace> logs -f <pod-name>-[xxx]

# 7、删除pod实例
kubectl -n <namespace> delete po <pod-name>-[xxx]

# 8、进入容器
kubectl -n <namespace> exec -it <pod-name>-[xxx] bash 
```

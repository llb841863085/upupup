## 本地源码推送到GitHub的新仓库
1、在本地初始化Git仓库并添加文件
> 首先确保你的项目文件夹内有代码，并且你已经在该目录下打开了命令行或终端。
```shell
# 初始化Git仓库
cd 你的项目文件夹路径
git init

# 切换到main分支
git branch -M main
```
2、添加所有文件到暂存区（或者只添加特定文件）
```shell
git add .
# 或者
git add 文件名
```
3、提交更改
```shell
# 查看本地状态
git status
# 提交第一次更改，附带一条描述信息
git commit -m "Initial commit with project source code"
```
4、在GitHub上创建新仓库
> 登录GitHub网站，点击右上角的"+"号，选择"New repository"。
> 填写仓库名称、描述（可选）、设置公开或私有，并根据需要选择是否立即添加README文件和选择许可证类型。
> 点击 "Create repository" 创建新的GitHub仓库。

5、获取GitHub仓库地址
> 在新创建的仓库页面找到HTTPS或SSH克隆URL，这将是git remote add需要用到的地址。

6、将本地仓库与GitHub仓库关联
```shell
# 在本地项目文件夹中，通过以下命令将本地仓库与远程GitHub仓库关联起来
git remote add origin 远程仓库HTTPS或SSH地址
# 例如，如果是HTTPS地址，可能是这样的：
git remote add origin git://github.com/你的用户名/仓库名.git
```

7、推送本地代码到GitHub
> 推送本地主分支（通常是 master 或 main，根据GitHub仓库默认设置而定）到GitHub的对应分支
```shell
git push -u origin main
# 或如果还是旧版仓库可能是
git push -u origin master
```
8、操作成功
> 完成以上步骤后，你的本地源码就会成功推送到GitHub上的新仓库。如果你的GitHub仓库已经设置了其他分支作为默认分支，在最后一步时请相应替换分支名称。

## 将 Git 仓库的远程地址从 HTTPS 更改为 SSH 方式
1、查看当前远程仓库的 URL
```shell
# 显示所有远程仓库及其对应的 fetch 和 push 地址。找到您想要修改的远程（通常为 origin）。
git remote -v
```
2、更改远程仓库 URL
```shell
# 其中，username 是您的用户名或组织名，repository 是您的仓库名称。
# GitHub
git remote set-url origin git@github.com:username/repository.git
# Gitee
git remote set-url origin git@gitee.com:username/repository.git
```
3、再次验证远程仓库 URL 已更改
```shell
#  origin 的 URL 已经变为 SSH 形式
git remote -v
```
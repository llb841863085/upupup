# Git拉取Fork源仓库的更改
1、添加上游仓库： 在你的本地fork克隆上添加一个远程追踪分支指向原始仓库，这样你可以从它那里拉取最新的改动。
```shell
git remote add upstream https://github.com/original-owner/original-repo.git
```
2、获取最新变动，并更新你的本地仓库以获取原始仓库的所有新分支和标签。
```shell
# 先确保本地主分支是最新的
git checkout master
# 或 
git checkout main
git pull upstream master
# 或
git pull upstream main

# 获取所有分支更新
git fetch upstream

# 获取所有标签更新
git fetch upstream --tags
```

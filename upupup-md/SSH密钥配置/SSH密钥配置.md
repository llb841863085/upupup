## 生成SSH密钥，并将其配置到GitHub
> ssh-keygen 是一个在 Linux 和类 Unix 系统中用于生成、管理和转换 SSH 密钥对的命令行工具。

1、生成密钥
```shell
# 当你想要指定文件名来保存生成的密钥时，可以使用 -f 选项。
# 下面是使用 ssh-keygen 生成一对 RSA 密钥，密钥长度为 2048 位，并将私钥保存到指定路径（例如：id_rsa_custom）
ssh-keygen -t rsa -b 2048 -f ./id_rsa_custom

# 上述命令分解说明：
# `-t rsa`: 指定密钥类型为 RSA
# `-b 2048`: 指定密钥长度为 2048 位
# `-f ./id_rsa_custom`: 指定保存私钥的文件路径和名称

# 执行此命令后，会在当前目录下生成两个文件：
# id_rsa_custom：私钥文件，应妥善保管，一般不公开
# id_rsa_custom.pub：公钥文件，通常用于复制到远程服务器或其他需要授权访问的系统上

# 如果你还想同时添加注释以便识别密钥用途，可以使用 -C 选项：
ssh-keygen -t rsa -b 2048 -f ./id_rsa_custom -C "my custom key for user@example.com"
# 这里 -C "my custom key for user@example.com" 将会在私钥和公钥文件中添加一个注释信息，便于识别该密钥的用途或所有者。
```
2、多个密钥场景设置
> 如果你有多个SSH密钥或者需要针对特定域名进行配置，可以编辑或创建~/.ssh/config文件来指定使用的私钥。例如：
```text
Host github.com
HostName github.com
User git
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa_github
```
3、添加公钥到远程服务器
> 将你的公钥内容（通常通过cat ~/.ssh/id_rsa.pub查看并复制）添加到需要访问的远程服务器上的authorized_keys文件中。这通常是通过SSH客户端软件或者直接登录服务器后手动操作完成的。

4、 确认公钥是否正确添加
> 登录GitHub网站，在个人设置页面找到“SSH and GPG keys”部分，检查对应的公钥是否已经成功添加。

5、验证连接
```shell
ssh -T git@github.com
```
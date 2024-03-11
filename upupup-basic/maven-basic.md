# Maven基础命令
```shell
mvn deploy -DaltDeploymentRepository=<repository-id>::default::<repository-url>

cd galaksio-common
mvn deploy -DaltDeploymentRepository=nexus-releases::default::http://nexus.xxx/repository/maven-releases/
```
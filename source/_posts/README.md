---
title: 如何使用 docker-hexo-next
categories:
- 说明
tags:
- usage
link: https://github.com/josiahzhao/docker-hexo-next
sticky: 100
date: 2021-11-22 20:46:25
---
## 说明
本项目提供了一个开箱即用的hexo私人博客解决方案，并且集成了人气最高的next主题。
通过使用docker镜像，在免去了繁杂的环境配置和安装的同时，也提供了简单但灵活的主题配置方式和博客更新打包方式。
所有的依赖只有[docker](https://www.docker.com/)
## 快速启动
只需要执行如下命令，即可启动你自己的hexo博客
```
docker run -d -p 3000:4000 -v {你的本地路径}/source:/hexo/website/source josiahzhao/docker-hexo-next:latest
```
> "{你的本地路径}/source"就是你的博客的数据库目录: 所有的配置、文档都在里面 => 备份和迁移部署只需要对这个目录进行操作即可

随后访问宿主机IP的3000端口即可，如图
![](https://nginx.mostintelligentape.com/blogimg/202112/run-next.jpeg)

* 说明
```
1. "{你的本地路径}/source"请填写本机实际存在的有读写权限的地址
2. 如果对docker命令不熟悉请参考 [docker运行命令使用方式](https://docs.docker.com/engine/reference/run/)
3. 启动时，如果"{你的本地路径}/source"是空白的话，则会生成一份模板文件，后续可以直接在模板下进行创作和主题配置调整
4. 启动时，如果"{你的本地路径}/source"已经有之前编辑的内容，则直接用历史数据启动；所以如果想要迁移部署很简单，将这台机器的"{你的本地路径}/source"拷贝走即可
```
## 如何维护文档
![](https://nginx.mostintelligentape.com/blogimg/202112/source-folder.jpeg)


## 如何修改配置

## 如何生成静态网站资源文件



docker build -t josiahzhao/docker-hexo-next:0.5 .

docker run -p 4001:4001 -p 4000:4000 josiahzhao/docker-hexo-next:0.2
docker run -p 4001:4001 -p 4000:4000 -v /Users/josiahzhao/Data/Code/docker-hexo-next/source:/hexo/website/source josiahzhao/docker-hexo-next:0.5


hexo server -d -p 4001 --config /hexo/website/source/_custom.yml
docker cp hexo/website/_config.yml 03260dd87674:/hexo/website/_config.yml
docker cp hexo/website/themes/next/_config.yml 03260dd87674:/hexo/website/themes/next/_config.yml

docker cp hexo/website e6b9de7c2a0c:/hexo/


docker cp 738d8da0f4d9:/hexo/website/source ./

## 参考文献
[官方文档](https://hexo.io/docs)

[竞品](https://zhuanlan.zhihu.com/p/110525277)

[教程](https://github.com/EasyHexo/Easy-Hexo)

[端到端](https://blog.csdn.net/sinat_37781304/article/details/82729029/)

[优秀主题](https://blog.csdn.net/sinat_37781304/article/details/82729029/)

[DockerFile](https://github.com/spurin/docker-hexo/blob/master/Dockerfile)

[next主题](https://github.com/theme-next/hexo-theme-next)

[next主题](https://theme-next.js.org/)

[next如何下载包](https://github.com/theme-next/hexo-theme-next/blob/master/docs/INSTALLATION.md)
[next如何配置文件](https://github.com/theme-next/hexo-theme-next/blob/master/docs/DATA-FILES.md)

[next配置项说明](https://theme-next.js.org/docs/theme-settings/)


1. docker run 
2. docker cp => docker run
3. update file => refresh
4. update config => restart

设置github banner https://github.com/next-theme/theme-next-docs/blob/master/_config.next.yml

首页置顶：https://github.com/next-theme/theme-next-docs/blob/f5be517ef88a5ea26b8fcf8e0f126c7e3fa602fa/source/_posts/hexo-theme-next.md


follow up:
1. 修改类别名称
seo
2. 反复测试
3. 上线服务器
    3.1 本项目
    3.2 personal blog
4. 上线harbor
5. 撰写使用文档
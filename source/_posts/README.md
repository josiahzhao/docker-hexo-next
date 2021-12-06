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
本项目提供了一个开箱即用的hexo私人博客解决方案，并且集成了高人气的next主题。
通过使用docker镜像，在免去了繁杂的环境配置和安装的同时，也提供了简单但灵活的主题配置方式和博客更新打包方式。
所有的依赖只有[docker](https://www.docker.com/)
## 快速启动
只需要执行如下命令，即可启动你自己的hexo博客
```
docker run -d -p 3000:4000 -v {你的本地路径}/source:/hexo/website/source josiahzhao/docker-hexo-next:latest
```
> "{你的本地路径}/source"就是你的博客的数据库目录: 所有的配置、文档都在里面，后续备份和迁移部署只需要对这个目录进行操作即可

随后访问宿主机IP的3000端口即可，如图
![](https://nginx.mostintelligentape.com/blogimg/202112/run-next.jpeg)


> 1. "{你的本地路径}/source"请填写本机实际存在的有读写权限的地址
> 2. 如果对docker命令不熟悉请参考 [docker运行命令使用方式](https://docs.docker.com/engine/reference/run/)
> 3. 启动时，如果"{你的本地路径}/source"是空白的话，则会生成一份模板文件，后续可以直接在模板下进行创作和主题配置调整
> 4. 启动时，如果"{你的本地路径}/source"已经有之前编辑的内容，则直接用历史数据启动；所以如果想要迁移部署很简单，将这台机器的"{你的本地路径}/source"拷贝走即可

## 如何维护文档
![](https://nginx.mostintelligentape.com/blogimg/202112/source-folder.jpeg)

如上图，可以将撰写的md文档存储_posts目录即可

> source目录就是官方文档中的source目录，也可直接参见[官方文档-如何写作](https://hexo.io/docs/writing)


## 如何修改配置 

- 修改hexo配置

hexo的配置如网站标题，描述，作者，时间格式等基础信息

上图中的source/_custom.yml就是官方的配置文件 (容器启动时通过--config source/_custom.yml将配置文件指向了这里)

所以按照[官方文档-配置说明](https://hexo.io/docs/configuration)即可进行配置

- 修改next主题配置

同样也存储在的source/_custom.yml，将配置写在theme_config下即可，如[官方文档-主题配置说明](https://hexo.io/docs/configuration#Alternate-Theme-Config)

针对next主题可以支持的修改项，可以参考[next官方文档-主题配置说明](https://theme-next.js.org/docs/theme-settings/)


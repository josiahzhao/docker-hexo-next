---
title: jojo12
categories:
- 自定义分类
- Badminton
- [Sports, Baseball]
- [MLB, American League, Boston Red Sox]
- [MLB, American League, New York Yankees]
- Rivalries
tags:
- Injury
- Fight
- Shocking
link: https://github.com/next-theme
sticky: 100
date: 2021-11-22 20:46:25
---
# 如何端到端使用hexo
## 背景
## 架构
## 安装方式
### 直接安装
### Docker安装
## CICD
## 基础配置方式
## 主题配置

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
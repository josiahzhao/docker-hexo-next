FROM node:14.13.1

MAINTAINER Josiah Zhao <josiahz@foxmail.com>

# install git and hexo cli | 安装git和hexo博客命令行
RUN apt-get install git-core
RUN npm config set registry https://registry.npm.taobao.org/ --global
RUN npm install -g hexo-cli

# init empty website | 初始化空白网站
WORKDIR /hexo
RUN hexo init website
WORKDIR /hexo/website
RUN npm install

# install theme-next | 安装next主题
RUN mkdir themes/next
RUN curl -L https://api.github.com/repos/theme-next/hexo-theme-next/tarball/v7.8.0 | tar -zxv -C themes/next --strip-components=1

# copy example source files | 将样例配置和内容拷贝到网站目录
COPY source /hexo/website/

ENTRYPOINT hexo server -d -p 4000 --config /hexo/website/source/_custom.yml




FROM node:14.13.1

MAINTAINER Josiah Zhao <493106672@qq.com>

RUN apt-get install git-core

RUN npm config set registry https://registry.npm.taobao.org/ --global

RUN npm install -g hexo-cli

WORKDIR /hexo

RUN hexo init website

WORKDIR /hexo/website

RUN npm install

RUN mkdir themes/next

RUN curl -L https://api.github.com/repos/theme-next/hexo-theme-next/tarball/v7.8.0 | tar -zxv -C themes/next --strip-components=1

COPY ./_config.yml /hexo/website/_config.yml

CMD hexo server -d -p 4000

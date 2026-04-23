#!/bin/bash
# 先复制 exampleSite 的内容
cp -R exampleSite/* .
# 确保主题的静态文件存在
if [ ! -d "static" ]; then
    mkdir -p static
fi
# 构建 Hugo
hugo --minify

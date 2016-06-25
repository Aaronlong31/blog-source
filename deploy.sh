#!/bin/bash
hexo generate
hexo deploy
git add .
git commit -m $1
git push origin master

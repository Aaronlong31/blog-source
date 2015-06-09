#!/bin/bash
hexo deploy
git add .
git commit -m 'update'
git push origin master

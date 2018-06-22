#!/bin/bash
# 
# 编译可执行文件
# Author: alex
# Created Time: 2018年06月22日 星期五 10时37分12秒
user=`whoami`
sudo -H pyinstaller -w -F -p . --clean es2csv_cli.py
sudo chown $user:$user ./dist
mv ./dist/es2csv_cli ./dist/es2csv

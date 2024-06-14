#!/bin/bash

# 1. ./tomcat/ に spring フォルダを作成
mkdir -p ./tomcat/spring

# 2. ./tomcat/spring/ に 内容をコピー
cp -r /mnt/c/Users/{username}/intellij-spring-project/ex-emp-management/* ./tomcat/spring/

# 3. docker compose build --no-cache でビルド
docker-compose build --no-cache

# 4. docker compose up -d で起動
docker-compose up -d

# 5. http://localhost:8081/ex-emp/employee/showList にアクセス
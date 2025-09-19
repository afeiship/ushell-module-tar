#!/usr/bin/env bash

tzd() {
    local dir="$1"
    
    # 检查是否提供了目录名
    if [ -z "$dir" ]; then
        echo "用法: tzd <目录名>"
        return 1
    fi
    
    # 检查目录是否存在且为目录
    if [ ! -d "$dir" ]; then
        echo "错误: 目录 '$dir' 不存在或不是目录"
        return 1
    fi
    
    # 进入目录并打包，使用 basename 获取目录名用于 zip 文件
    local dirname=$(basename "$dir")
    (
        cd "$dir" && zip -rq "../${dirname}.zip" .
    )
    
    if [ $? -eq 0 ]; then
        echo "✅ 打包成功: ../${dirname}.zip"
    else
        echo "❌ 打包失败: $dir"
        return 1
    fi
}
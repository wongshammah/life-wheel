#!/bin/bash

# 生命之轮项目部署脚本
# 用于快速部署到GitHub Pages

echo "🚀 生命之轮项目部署脚本"
echo "================================"

# 检查是否在Git仓库中
if [ ! -d ".git" ]; then
    echo "❌ 错误：当前目录不是Git仓库"
    echo "请先初始化Git仓库："
    echo "  git init"
    echo "  git add ."
    echo "  git commit -m 'Initial commit'"
    exit 1
fi

# 检查是否有远程仓库
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ 错误：没有配置远程仓库"
    echo "请先添加远程仓库："
    echo "  git remote add origin https://github.com/wongshammah/life-wheel.git"
    exit 1
fi

echo "✅ 检查通过，开始部署..."

# 提交更改
echo "📝 提交更改..."
git add .
git commit -m "Update life wheel project"

# 推送到远程仓库
echo "📤 推送到远程仓库..."
git push origin main

echo "✅ 部署完成！"
echo ""
echo "📋 下一步："
echo "1. 访问你的GitHub仓库"
echo "2. 进入 Settings > Pages"
echo "3. Source选择 'Deploy from a branch'"
echo "4. Branch选择 'main'"
echo "5. 点击 'Save'"
echo ""
echo "🌐 你的网站将在几分钟后可用："
echo "   https://你的用户名.github.io/仓库名/"
echo ""
echo "📱 在Notion中使用："
echo "1. 在Notion页面中输入 /embed"
echo "2. 粘贴上面的链接"
echo "3. 调整嵌入块大小"
echo ""
echo "🎉 享受你的动态生命之轮吧！" 
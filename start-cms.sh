#!/bin/bash

echo "🚀 启动博客内容管理系统..."
echo ""
echo "================================================"
echo "  Ruiran Yu's Personal Blog - CMS Launcher"
echo "================================================"
echo ""

# 检查是否在正确的目录
if [ ! -f "hugo.toml" ]; then
    echo "❌ 错误：请在 PersonalBlog 目录下运行此脚本"
    exit 1
fi

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo "⚠️  警告：未检测到 Node.js，正在安装..."
    echo "请访问 https://nodejs.org/ 下载安装"
    exit 1
fi

echo "✅ 环境检查通过"
echo ""

# 启动 Hugo 服务器
echo "📝 启动 Hugo 服务器..."
hugo server -D &
HUGO_PID=$!
sleep 2

# 启动 CMS 后端
echo "🎨 启动 CMS 管理后台..."
npx decap-server &
CMS_PID=$!
sleep 3

echo ""
echo "================================================"
echo "✨ 启动成功！"
echo "================================================"
echo ""
echo "📖 博客预览：http://localhost:1313"
echo "⚙️  CMS 管理：http://localhost:1313/admin"
echo ""
echo "💡 提示："
echo "   - 在 CMS 中编辑内容后点击 'Publish' 保存"
echo "   - 更改会自动同步到 GitHub"
echo "   - 按 Ctrl+C 停止所有服务"
echo ""
echo "================================================"

# 等待用户中断
trap "kill $HUGO_PID $CMS_PID; echo ''; echo '👋 服务已停止'; exit" INT
wait


# 🔧 访问 CMS 管理后台的方法

## ⏳ 问题原因

GitHub Pages 正在构建你的网站，通常需要 **2-5 分钟**。

## ✅ 解决方案

### 方法 1: 等待并刷新（最简单）

1. 等待 2-5 分钟
2. 访问：https://rui-ranyu.github.io/admin/
3. 如果还是 404，强制刷新：`Cmd + Shift + R` (Mac) 或 `Ctrl + F5` (Windows)

### 方法 2: 检查构建状态

1. 访问：https://github.com/Rui-RanYu/Rui-RanYu.github.io/actions
2. 查看最新的 "pages build and deployment" 工作流
3. 等待显示 ✅ 绿色勾
4. 然后访问 admin 页面

### 方法 3: 直接访问文件（立即可用）

如果 `/admin/` 不行，试试：
- https://rui-ranyu.github.io/admin/index.html

### 方法 4: 本地测试（推荐，立即可用）

如果想立即使用 CMS，在本地运行：

```bash
# 1. 安装 Hugo（如果还没有）
brew install hugo

# 2. 启动 Hugo
cd /Users/ryanyu/Desktop/PersonalBlog
hugo server -D

# 3. 另开一个终端，启动 CMS 后端
npx decap-server

# 4. 访问
open http://localhost:1313/admin
```

或者使用快速启动脚本：
```bash
cd /Users/ryanyu/Desktop/PersonalBlog
./start-cms.sh
```

## 🐛 常见问题

### Q: 为什么显示 404？
A: GitHub Pages 还在构建，请等待 2-5 分钟

### Q: 等了很久还是 404？
A: 
1. 检查 GitHub Actions 是否成功：https://github.com/Rui-RanYu/Rui-RanYu.github.io/actions
2. 清除浏览器缓存：`Cmd + Shift + R`
3. 确认 URL 正确：结尾有 `/admin/` 或 `/admin/index.html`

### Q: 可以直接在线编辑吗？
A: 可以，但需要配置 GitHub OAuth：
1. 创建 GitHub OAuth App
2. 配置回调 URL
3. 详见 `CMS_GUIDE.md`

临时方案：使用本地模式（无需配置）

## 📊 构建状态查看

当前构建状态：
[![GitHub Pages](https://github.com/Rui-RanYu/Rui-RanYu.github.io/actions/workflows/hugo.yml/badge.svg)](https://github.com/Rui-RanYu/Rui-RanYu.github.io/actions/workflows/hugo.yml)

## 💡 推荐做法

**第一次使用：**
1. ✅ 先使用本地模式测试（`./start-cms.sh`）
2. ✅ 熟悉界面和功能
3. ✅ 然后等待线上版本构建完成
4. ✅ 最后配置 OAuth 实现在线编辑

**日常使用：**
- 复杂编辑：用本地模式
- 简单修改：用在线模式（配置 OAuth 后）
- 紧急更新：直接在 GitHub 网页编辑 Markdown

## 🎯 立即体验

现在就运行：
```bash
cd /Users/ryanyu/Desktop/PersonalBlog
./start-cms.sh
```

然后访问：http://localhost:1313/admin

---

**预计等待时间**：线上版本将在 **2-5 分钟**后可用  
**立即可用**：本地版本现在就能使用！


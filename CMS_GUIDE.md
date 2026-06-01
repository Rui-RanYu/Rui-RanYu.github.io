# Decap CMS 集成使用指南

## 🎉 已完成配置

你的博客现在已经集成了 Decap CMS（原 Netlify CMS）内容管理系统！

## 📍 访问管理后台

### 方式 1: GitHub OAuth（推荐 - 需要额外配置）

1. 访问 https://rui-ranyu.github.io/admin
2. 点击 "Login with GitHub"
3. 授权后即可管理内容

**需要配置 GitHub OAuth App：**
- 访问 GitHub Settings > Developer settings > OAuth Apps
- 点击 "New OAuth App"
- 填写：
  - Application name: `Personal Blog CMS`
  - Homepage URL: `https://rui-ranyu.github.io`
  - Authorization callback URL: `https://api.netlify.com/auth/done`
- 保存后将 Client ID 和 Client Secret 配置到 Netlify Identity

### 方式 2: 本地开发模式（最简单 - 推荐先用这个）

1. 在本地启动 Hugo 服务器：
   ```bash
   cd /Users/ryanyu/Desktop/PersonalBlog
   hugo server
   ```

2. 另开一个终端，启动 CMS 代理：
   ```bash
   npx decap-server
   ```

3. 访问 http://localhost:1313/admin
4. 点击 "Work with Local Git Repository"
5. 现在你可以在浏览器中编辑内容！

### 方式 3: 使用简化的 GitHub 编辑

在每个页面底部点击 "Suggest Changes" 按钮，会跳转到 GitHub 在线编辑器。

## ✨ CMS 功能

### 可以管理的内容：

1. **Pages（页面）**
   - About Page（关于页面）
   - Research Page（研究页面）

2. **Blog Posts（博客文章）**
   - 创建新文章
   - 编辑现有文章
   - 添加标签和分类
   - 上传图片

3. **Site Configuration（网站配置）**
   - 修改网站标题
   - 更新描述和关键词
   - 更改主题设置

## 🚀 推荐使用流程

### 快速开始（本地模式）

```bash
# 1. 安装 npx（如果还没有）
npm install -g npx

# 2. 进入项目目录
cd /Users/ryanyu/Desktop/PersonalBlog

# 3. 启动 Hugo
hugo server &

# 4. 启动 CMS 后端
npx decap-server

# 5. 在浏览器访问
open http://localhost:1313/admin
```

### 编辑内容

1. 登录管理后台
2. 选择要编辑的内容：
   - **Pages** - 编辑 About 或 Research 页面
   - **Blog Posts** - 创建或编辑博客文章
3. 使用富文本编辑器编辑内容
4. 点击 "Publish" 保存
5. 更改会自动提交到 GitHub
6. GitHub Pages 会自动重新构建网站（1-2分钟）

## 📝 编辑器功能

- **Markdown 支持**：完整的 Markdown 语法
- **实时预览**：编辑时实时预览效果
- **图片上传**：拖拽上传图片到 `/static/images`
- **媒体库**：管理所有上传的图片
- **草稿功能**：可以保存草稿，不立即发布

## 🔧 配置文件位置

- CMS 配置：`/static/admin/config.yml`
- CMS 入口：`/static/admin/index.html`

## 💡 提示

1. **本地测试优先**：先在本地模式测试，确认无误后再配置 OAuth
2. **自动保存**：CMS 会自动保存草稿
3. **Git 历史**：所有更改都会在 Git 历史中，可以随时回滚
4. **移动端友好**：CMS 支持在平板和手机上使用

## 🐛 常见问题

**Q: 无法登录？**
A: 如果是第一次使用，建议先用本地模式（npx decap-server）

**Q: 更改没有生效？**
A: 检查 GitHub Actions 是否成功构建，等待 1-2 分钟

**Q: 图片上传失败？**
A: 确保图片大小不超过 5MB，格式为 jpg/png/gif

## 📚 更多资源

- Decap CMS 文档: https://decapcms.org/docs/
- Hugo + Decap CMS: https://decapcms.org/docs/hugo/

---

现在你可以开始使用可视化的方式管理你的博客内容了！🎊


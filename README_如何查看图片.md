# 如何查看图片画廊

## 问题说明
如果直接双击打开 `index.html` 文件，图片可能无法显示。这是因为浏览器的安全限制（CORS策略）阻止了本地文件的加载。

## 解决方案

### 方法1：使用本地服务器（推荐）

#### 使用 Python（如果已安装 Python）
在项目目录下打开命令行，运行：
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

然后在浏览器中访问：`http://localhost:8000`

#### 使用 Node.js（如果已安装 Node.js）
```bash
npx http-server -p 8000
```

然后在浏览器中访问：`http://localhost:8000`

#### 使用 VS Code Live Server
1. 安装 VS Code 的 "Live Server" 扩展
2. 右键点击 `index.html`
3. 选择 "Open with Live Server"

### 方法2：使用浏览器特殊模式

#### Chrome/Edge
1. 关闭所有 Chrome/Edge 窗口
2. 使用命令行启动（Windows）：
```bash
chrome.exe --allow-file-access-from-files
```
或
```bash
msedge.exe --allow-file-access-from-files
```

#### Firefox
Firefox 通常可以直接打开本地 HTML 文件并显示图片。

### 方法3：部署到 GitHub Pages
1. 将项目推送到 GitHub
2. 在仓库设置中启用 GitHub Pages
3. 访问 `https://你的用户名.github.io/仓库名/`

## 检查图片是否加载
打开浏览器的开发者工具（F12），查看 Console 标签页，如果有图片加载错误，会显示相应的警告信息。




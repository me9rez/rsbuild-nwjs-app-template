# Rsbuild NW.js 应用模板

这是一个基于 NW.js 的桌面应用模板项目，使用 Rsbuild 进行构建，Preact 作为前端框架。

## 项目特性

- 🚀 基于 Rsbuild 现代化构建工具
- ⚛️ 使用 Preact 作为前端框架（轻量级 React 替代品）
- 🖥️ NW.js 桌面应用支持
- 📝 TypeScript 支持
- 🎨 现代化的开发体验

## 技术栈

- **构建工具**: Rsbuild
- **前端框架**: Preact
- **编程语言**: TypeScript
- **桌面框架**: NW.js
- **包管理**: pnpm

## 快速开始

### 环境要求

- Node.js >= 16
- NW.js SDK (可选，用于本地调试)

### 安装依赖

```bash
pnpm install
```

### 构建项目

```bash
pnpm build
```

## 项目结构

```
├── src/                 # 源代码目录
│   ├── App.tsx         # 主应用组件
│   ├── App.css         # 应用样式
│   ├── index.tsx       # 入口文件
│   └── env.d.ts        # 环境类型声明
├── rsbuild.config.ts   # Rsbuild 配置文件
├── tsconfig.json       # TypeScript 配置
├── package.json        # 项目依赖和脚本
├── CreateShortcut.ps1  # Windows 快捷方式创建脚本
└── icon.png           # 应用图标
```

## NW.js 运行

### 方法一：使用 NW.js SDK

1. 下载 NW.js SDK 并解压
2. 将构建后的 `dist` 目录内容复制到 NW.js 应用目录
3. 运行 NW.exe

### 方法二：创建快捷方式 (Windows)

项目提供了 `CreateShortcut.ps1` 脚本用于创建桌面快捷方式：

1. 修改 `CreateShortcut.ps1` 中的路径：
   - `TargetPath`: 设置为你的 nw.exe 实际路径
   - `Arguments`: 设置为你的应用目录实际路径

2. 在 PowerShell 中运行脚本：
```powershell
./CreateShortcut.ps1
```

## 配置说明

### Rsbuild 配置

- `rsbuild.config.ts` 包含了项目的构建配置
- 已配置 Preact 插件
- 目标平台设置为 NW.js
- 资源路径配置为相对路径 `./`

### TypeScript 配置

- `tsconfig.json` 包含了 TypeScript 编译配置
- 已配置 Preact 的 JSX 支持
- 启用了严格模式

### NW.js 配置

在 `package.json` 中的 `window` 字段可以配置 NW.js 窗口属性：
```json
"window": {
  "icon": "./icon.png"
}
```

## 开发指南

### 添加新组件

1. 在 `src` 目录下创建新的组件文件
2. 使用 `.tsx` 扩展名以获得 TypeScript 支持
3. 在需要的地方导入并使用组件

### 样式管理

- 项目使用 CSS 文件进行样式管理
- 可以在 `App.css` 中添加全局样式
- 支持模块化 CSS（需要相应配置）

### 构建优化

- 已配置 `chunkSplit` 策略为 `all-in-one` 以减少文件数量
- 禁用了文件名哈希以方便调试
- 禁用了代码压缩以方便调试

## 许可证

本项目采用 MIT 许可证，详见 [LICENSE](LICENSE) 文件。

## 贡献

欢迎提交 Issue 和 Pull Request 来改进这个模板项目。

## 相关链接

- [Rsbuild 官方文档](https://rsbuild.dev/)
- [Preact 官方文档](https://preactjs.com/)
- [NW.js 官方文档](https://nwjs.io/)
- [TypeScript 官方文档](https://www.typescriptlang.org/)

<p align="center">
  <a href="https://www.treadstone.design/" target="blank"><img src="https://www.treadstone.design/logo.png" width="120" alt="Treadstone Logo" /></a>
</p>

<h3 align="center">轻量低代码应用开发平台</h3>

## 前置依赖
- Nodejs 18^  
- MySQL 8.0^  
- Redis  


## 安装
1. 全局安装Treadstone CLI命令行工具：
```bash
npm i -g treadstone-cli
```

2. 将Treadstone安装到当前文件夹：
```bash
stone install
```

3. 安装依赖：
```bash
cd treadstone-standard && npm i --production
```

4. 根据需要修改全局配置.env文件：
```bash
#.env

# YOUR_MYSQL_DATABASE_URL
DATABASE_URL="mysql://USERNAME:PASSWORD@HOST:PORT/DATABASE"

PORT=9000

JWT_EXPIRED="7 days"
JWT_SECRET="<YOUR_JWT_SECRET>"

# 如需接入钉钉同步组织架构/钉钉扫码登录，请添加以下配置:
# DINGTALK_APP_KEY="YOUR_DINGTALK_APP_KEY"
# DINGTALK_APP_SECRET="YOUR_DINGTALK_APP_SECRET"

# 如需接入企业微信同步组织架构/企业微信扫码登录，请添加以下配置:
# WEWORK_CORP_ID="YOUR_WEWORK_CORP_ID"
# WEWORK_CORP_SECRET="YOUR_WEWORK_CORP_SECRET"

# 组织ID及组织密钥可在Treadstone官网生成
TREADSTONE_ORG_ID="YOUR_TREADSTONE_ORG_ID"
TREADSTONE_ORG_SECRET="YOUR_TREADSTONE_ORG_SECRET"

```


5. 修改完全局环境变量之后，初始化数据库：
```bash
npx prisma migrate dev --name init
```

6. 全局安装PM2：
```bash
npm i -g pm2
```

7. 运行
```bash
pm2 start ecosystem.config.js --env=production
```

8. 运行后，修改treadstone-cli服务指向
```bash
# <YOUR_TREADSTONE_URL改为你的服务，默认：http://localhost:9000/
stone config set --registry <YOUR_TREADSTONE_URL>
```

9. 初始化组织名称及管理员账号
```bash
stone init
```

10. 浏览器打开私有化部署后的treadstone，使用刚才初始化的管理员账号登录即可。  
默认：<a href="http://localhost:9000">http://localhost:9000</a>

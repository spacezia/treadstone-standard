module.exports = {
  apps: [
    {
      name: 'treadstone-standard',
      script: './dist/main.js',
      instances: 1, // 实例数量
      autorestart: true, // 自动重启
      watch: false, // 是否监听文件变化
      max_memory_restart: '1G', // 内存占用超过1G时重启
      log_date_format: 'YYYY-MM-DD HH:mm Z', // 日志时间格式
      error_file: './logs/error.log', // 错误日志路径
      out_file: './logs/out.log', // 输出日志路径
      env: {
        NODE_ENV: 'development',
      },
      env_production: {
        NODE_ENV: 'production',
      },
    },
  ],
};

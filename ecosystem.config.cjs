module.exports = {
  apps: [
    {
      name: 'realand-udp-bridge',
      script: 'server.js',
      instances: 1,
      exec_mode: 'fork',
      autorestart: true,
      watch: false,
      max_memory_restart: '200M',
      env: {
        NODE_ENV: 'production',
        PORT: process.env.PORT || 11898,
        SUPABASE_URL: process.env.SUPABASE_URL || 'https://YOUR_PROJECT_ID.supabase.co/functions/v1/attendance-log',
        SUPABASE_SERVICE_KEY: process.env.SUPABASE_SERVICE_KEY || ''
      }
    }
  ]
};

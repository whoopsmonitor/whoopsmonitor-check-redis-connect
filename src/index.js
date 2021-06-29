const redis = require('redis')
const WM_CONNECTION_STRING = process.env.WM_CONNECTION_STRING
const client = redis.createClient({
  url: WM_CONNECTION_STRING,
  connect_timeout: 3000, // 1s
  no_ready_check: true
})

client.on('ready', () => {
  console.log('Successfully connected to Redis.')
  process.exit(0)
})

client.on('error', (err) => {
  console.log('Not connected to Redis.')
  process.exit(2)
})

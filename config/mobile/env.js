const envs = {
  production: {
    BASE_URL: '/mobile/', // 路由基础路径
    BASE_API: 'http://127.0.0.1/api',
    APPID: 'ww622fc852f79c3f13',
    AGENTID: '1000080',
  },
}
let env = envs[process.env.VUE_APP_ENV]

module.exports = env

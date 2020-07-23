import Vue from 'vue'
import App from '../carlist.vue'

Vue.config.productionTip = false

new Vue({
  render: h => h(App)
}).$mount('#app')

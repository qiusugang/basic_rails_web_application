import Vue from 'vue'
import MuseUI from 'muse-ui'
import 'muse-ui/dist/muse-ui.css'
Vue.use(MuseUI)
import App from '../starter.vue'

Vue.config.productionTip = false

new Vue({
  render: h => h(App)
}).$mount('#app')

import Vue from 'vue'
import App from '../netcars.vue'
import "gridjs/dist/theme/mermaid.css";

Vue.config.productionTip = false

new Vue({
  render: h => h(App)
}).$mount('#app')

<template>
<div id="app">
  <input type="text" v-model="qstring" placeholder="输入车辆型号..."> <button @click="onSearch">搜索</button>
  <p> 输入的内容是： {{qstring}} </p>
  <grid :cols="cols" :rows="rows" :search="false" :sort="true" :server="server" :pagination="pagination"></grid>
</div>
</template>

<script>
import Grid from 'gridjs-vue'

export default {
  name: 'carlist',
  components: {
    Grid
  },
  methods: {
    onSearch: function() {
      alert(this.qstring);
    }
  },
  data() {
    return {
      qstring: '宝马5系2015款',
      cols: ['Car name', 'Purchase date', 'Mileage', 'City', 'Price'],
      pagination: true,
      server: {
        url: '/netcars.json?search=宝马5系2015款',
        then: res => res.data.map(car => [car.car_name, car.purchase_date, car.mileage, car.city_name, car.price]),
        handle: res => {
          // no matching records found
          if (res.status === 404) return {
            data: []
          };
          if (res.ok) return res.json();

          throw Error('oh no :(');
        }
      }
    }
  }
}
</script>

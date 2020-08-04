<template>
<div id="app">
  <grid :cols="cols" :search="search" :sort="true" :server="server" :pagination="pagination"></grid>
</div>
</template>

<script>
import Grid from 'gridjs-vue'

export default {
  name: 'carlist',
  components: {
    Grid
  },
  data() {
    return {
      cols: ['Car name', 'Purchase date', 'Mileage', 'City', 'Price'],
      pagination: true,
      search: {
        server: {
          url: (prev, keyword) => `${prev}?search=${keyword}`
        }
      },      
      server: {
        url: '/netcars.json',
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

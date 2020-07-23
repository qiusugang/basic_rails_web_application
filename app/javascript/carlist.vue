<template>
  <div id="app">
    <grid :cols="cols" :rows="rows" :search="false" :sort="true" :server="server"></grid>
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
        cols: ['Car name','Purchase date', 'Mileage', 'City', 'Price'],
        server: {
          url: '/netcars.json?search=宝马5系2015款',
          then: res => res.data.map(car => [car.car_name, car.purchase_date, car.mileage, car.city_name, car.price]),
          handle: res => {
            // no matching records found
            if (res.status === 404) return {data: []};
            if (res.ok) return res.json();
            
            throw Error('oh no :(');
          }
        }
      }
    }
  }
</script>

<template>
    <div>
      <v-select :options="['foo', 'bar', 'baz']"></v-select>
    </div>
  </template>
  
  <script>
  import vSelect from 'vue-select'
  
  export default {
    components: { vSelect }
  }
  </script>
  
  <style>
  @import "vue-select/dist/vue-select.css";
  </style>
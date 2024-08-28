<!-- Button.vue -->
<template>
    <button @click="$emit('click')">
      <slot>イベントを検索する</slot> <!-- デフォルトのテキスト -->
    </button>
  </template>
  
  <script>
  export default {
    name: 'Button'
  }
  </script>
  
  <style scoped>
  button {
    padding: 10px 20px;
    font-size: 1rem;
    cursor: pointer;
    border: 1px solid #ccc;
    border-radius: 4px;
    background-color: #f5f5f5;
  }
  </style>
  
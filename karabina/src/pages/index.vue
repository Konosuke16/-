<template>
  <div class="background">
    <div class="image-container">
      <img src="@/assets/images/world.png" alt="奈良の風景" class="image" />
    </div>

    <div class="container">
      <router-link to="/search" class="button-style"
        >イベントを検索する</router-link
      >
    </div>
  </div>
</template>

<style scoped>html,
body {
  margin: 0;
  padding: 0;
  height: 100%;
  overflow: hidden; 
}

.background {
  height: 100vh;
  background-color: #f3ecd8;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.container {
  display: flex;
  align-items: center;
  justify-content: center;
}

.image-container {
  text-align: center;
  width: 100%;
  max-height: 50vh; 
  margin-top: -75%;
}

.image {
  width: 100%;
  height: auto; 
  object-fit: contain;
  margin: 0;
}

.button-style {
  background-color: #fbbf24;
  color: black;
  padding: 10% 20%;
  border: none;
  border-radius: 15px;
  font-size: 20px; 
  cursor: pointer;
  text-align: center;
  margin: 10px;
  position: absolute;
	bottom: 3%;
}

.button-style:hover {
  background-color: #f59e0b;
}

</style>

<!-- App.vue または使用するコンポーネントファイル -->

<script>
export default {
  server: {
    hmr: {
      overlay: false,
    },
  },
};
</script>



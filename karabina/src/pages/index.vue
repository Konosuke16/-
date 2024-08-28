<template>
  <div>
    <div class="image-container">
      <img src="../assets/assets/world.png" alt="奈良の風景" class="image">
    </div>
    <h1 class="headline">奈良で旬の体験を</h1>
    <v-btn @click="submit">
    Submit
  </v-btn>
  </div>
</template>



<style scoped>
.image-container {
  text-align: center;
}

.image {
  max-width: 100%;
  height: auto;
}

.headline {
  text-align: center;
  margin-top: 10px;
}

</style>

  <style scoped>
  .headline {
    font-size: 2rem; /* 文字の大きさ */
    color: #333; /* 文字の色 */
    text-align: center; /* テキストを中央揃え */
    padding: 1rem; /* 周りのスペース */
    font-family: 'Arial', sans-serif; /* フォントの設定 */
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1); /* 文字の影を追加 */
  }
  </style>

<!-- App.vue または使用するコンポーネントファイル -->


<script>
import Button from "../components/button/Button.vue" 
export default {
  server: {
    hmr: {
      overlay: false,
    },
  },
};
</script>

<style scoped>
.image-container {
  text-align: center;
}

.image {
  max-width: 100%;
  height: auto;
}

.headline {
  font-size: 2rem;
  color: #333;
  text-align: center;
  padding: 1rem;
  font-family: 'Arial', sans-serif;
  text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}
</style>

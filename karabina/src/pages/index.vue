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

<style scoped>
html,
body {
  margin: 0;
  padding: 0;
  height: 100%;
}

.background {
  height: 100vh;
  background-color: #f3ecd8; /* 画面全体の背景色 */
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
  margin: 0;
}

.image {
  width: 100%;
  object-fit: cover;
  margin: 0;
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

<style scoped>
.button-style {
  background-color: #fbbf24; /* bg-yellow-500 の色 */
  color: black; /* 文字色を白に設定 */
  padding: 30px 90px; /* ボタンの内側の余白 */
  border: none; /* ボーダーを削除 */
  border-radius: 15px; /* ボタンの角を丸くする */
  font-size: 1.5rem; /* 文字のサイズ */
  cursor: pointer; /* カーソルをポインターにする */
  text-align: center; /* テキストを中央に配置 */
  margin-top: 10px;
}

.button-style:hover {
  background-color: #f59e0b; /* hover時の色 */
}

.background {
  background-color: #f3ecd8;
}
</style>

<template>
  <div class="p-4">
    <!-- イベントの画像と詳細 -->
    <div class="bg-white p-4 shadow rounded">
      <!-- <img
        src="/path/to/image"
        alt="イベント画像"
        class="w-full mb-4 rounded"
      /> -->
      <h2 class="text-xl font-bold mb-2">イベント詳細: {{ detailId }}</h2>
      <p class="mb-2">・なら祭り</p>
      <p class="mb-2">・8月24日（土）</p>
      <p class="mb-2">・対象年齢、層（子供から大人まで）</p>
      <p class="mb-2">
        ・詳細（1300年の歴史ある平城京で書道体験！道具なしで誰でも参加できます！ひとり500円）
      </p>
      <p>・申し込みリンク（公式HP）</p>
    </div>

    <!-- 地図セクション -->
    <div class="mt-4 bg-white p-4 shadow rounded">
      <h3 class="text-lg font-bold mb-2">地図</h3>
      <p>・近鉄奈良駅西口より徒歩15分</p>
    </div>

    <!-- イベント検索に戻るボタン -->
    <div class="mt-6">
      <button
        @click="goBack"
        class="bg-yellow-500 text-white py-2 px-4 rounded"
      >
        イベント検索に戻る
      </button>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    goBack() {
      this.$router.push("/result");
    },
  },
  data() {
    return {
      detailId: null,
    };
  },
  mounted() {
    this.detailId = this.$route.params.detail;
  },
};
</script>

<style scoped>
/* scoped CSS */
</style>

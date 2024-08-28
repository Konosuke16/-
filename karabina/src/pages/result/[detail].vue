<template>
  <div class="p-4">
    <!-- イベントの画像と詳細 -->
    <div v-if="event" class="bg-white p-4 shadow rounded">
      <h2 class="text-xl font-bold mb-2">{{ event.name }}</h2>
      <p class="mb-2">・{{ formatDate(event.date) }}</p>
      <p class="mb-2">・場所: {{ event.location }}</p>
      <p class="mb-2">・詳細: {{ event.description }}</p>
      <p>
        ・申し込みリンク(これはサンプルです):
        <a :href="event.link" target="_blank">公式HP</a>
      </p>
    </div>

    <!-- イベントが見つからなかった場合のメッセージ -->
    <div v-else class="bg-white p-4 shadow rounded">
      <p>イベントが見つかりませんでした。</p>
      <p>ID: {{ route.params.detail }}</p>
      <!-- 取得できているパラメータを表示 -->
      <p v-if="!events.length">イベントデータがロードされていません。</p>
    </div>

    <!-- 地図セクション -->
    <div v-if="event" class="mt-4 bg-white p-4 shadow rounded">
      <h3 class="text-lg font-bold mb-2">地図</h3>
      <p>・{{ event.location }}</p>
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

<script setup>
import { useRoute, useRouter } from "vue-router";
import { computed } from "vue";

const route = useRoute();
const router = useRouter();

const { data: events } = useAsyncData(
  "events",
  async () => await $fetch("/api/getEvents")
);

const formatDate = (date) => {
  return new Date(date).toLocaleDateString("ja-JP", {
    year: "numeric",
    month: "2-digit",
    day: "2-digit",
  });
};

// IDに基づいてイベントをフィルタリング
const event = computed(() => {
  const eventId = route.params.detail;
  return events.value.find((e) => e.id === eventId) || null;
});

const goBack = () => {
  router.back();
};
</script>

<style scoped>
/* scoped CSS */
</style>

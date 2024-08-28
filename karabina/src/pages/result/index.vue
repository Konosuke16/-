<template>
  <div class="event-list">
    <h1 class="header">検索結果</h1>
    <ul>
      <li
        v-for="event in filteredEvents"
        :key="event.id"
        class="event-item"
        @click="goToDetail(event.id)"
      >
        <div class="event-content">
          <div class="event-icon">
            <!-- アイコンまたは画像をここに追加 -->
          </div>
          <div class="event-details">
            <h2 class="event-name">{{ event.name }}</h2>
            <p class="event-date">{{ formatDate(event.date) }}</p>
            <p class="event-location">{{ event.location }}</p>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>

<script setup>
import { computed } from "vue";
import { useRoute, useRouter } from "#imports";

// ルーターとルートを設定
const route = useRoute();
const router = useRouter();

// useAsyncDataを使ってイベントデータを取得
const { data: events } = useAsyncData(
  "events",
  async () => await $fetch("/api/getEvents")
);

// 日付フォーマット関数
const formatDate = (date) => {
  return new Date(date).toLocaleDateString("ja-JP", {
    year: "numeric",
    month: "2-digit",
    day: "2-digit",
  });
};

// イベントのフィルタリング
const filteredEvents = computed(() => {
  return events.value.filter((event) => {
    const eventDateTime = new Date(event.date);

    const startDateTime = route.query.startDate
      ? new Date(`${route.query.startDate}T${route.query.startTime || "00:00"}`)
      : null;

    const endDateTime = route.query.endDate
      ? new Date(`${route.query.endDate}T${route.query.endTime || "23:59"}`)
      : null;

    return (
      (!startDateTime || eventDateTime >= startDateTime) &&
      (!endDateTime || eventDateTime <= endDateTime) &&
      (!route.query.location ||
        route.query.location === "" ||
        event.location === route.query.location) &&
      (!route.query.companion ||
        route.query.companion === "" ||
        event.companion === route.query.companion) &&
      (!route.query.ageGroup ||
        route.query.ageGroup === "" ||
        event.age_group === route.query.ageGroup) &&
      (!route.query.eventType ||
        route.query.eventType === "" ||
        event.event_type === route.query.eventType) &&
      (!route.query.keyword ||
        route.query.keyword === "" ||
        event.name.includes(route.query.keyword))
    );
  });
});

// イベント詳細ページへの遷移
const goToDetail = (id) => {
  router.push(`/result/${id}`);
};
</script>

<style scoped>
.event-list {
  max-width: 600px;
  margin: auto;
  padding: 1rem;
}

.header {
  background-color: #d8b387;
  text-align: center;
  padding: 0.5rem;
  font-size: 1.5rem;
  color: #fff;
  border-radius: 8px;
}

ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.event-item {
  background-color: #fff8e1;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  margin-bottom: 1rem;
  padding: 1rem;
  transition: transform 0.3s, box-shadow 0.3s;
}

.event-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.event-content {
  display: flex;
  align-items: center;
}

.event-icon {
  width: 50px;
  height: 50px;
  background-color: #f0f0f0;
  border-radius: 8px;
  margin-right: 1rem;
}

.event-details {
  flex-grow: 1;
}

.event-name {
  font-size: 1.25rem;
  margin: 0;
  color: #333;
}

.event-date,
.event-location {
  font-size: 0.9rem;
  color: #666;
}
</style>

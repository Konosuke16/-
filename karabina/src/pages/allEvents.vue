<template>
  <div class="event-list">
    <h1 class="header">イベント一覧</h1>
    <ul>
      <li
        v-for="event in events"
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
import { useRouter } from "vue-router";

const router = useRouter();

const { data: events } = useAsyncData(
  "events",
  async () => await $fetch("/api/getEvents")
);

const formatDate = (date) => {
  return new Date(date).toLocaleDateString();
};

const goToDetail = (id) => {
  router.push({ path: `/result/${id}` });
};
</script>

<style scoped>
.event-list {
  max-width: 600px;
  margin: auto;
  padding: 1rem;
}

.header {
  background-color: #d8b387; /* サンプルデザインに基づく背景色 */
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
  background-color: #fff8e1; /* サンプルデザインに基づく背景色 */
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

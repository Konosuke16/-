<template>
  <div>
    <h1>イベント一覧</h1>
    <ul>
      <li v-for="event in events" :key="event.id">
        {{ event.name }} - {{ formatDate(event.date) }} - {{ event.location }}
      </li>
    </ul>
  </div>
</template>

<script setup>
const { data: events } = await useAsyncData("events", () =>
  $fetch("/api/getEvents")
);

const formatDate = (date) => {
  return new Date(date).toLocaleDateString();
};
</script>

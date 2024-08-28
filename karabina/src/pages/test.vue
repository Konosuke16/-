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

<script>
import axios from "axios";

export default {
  async asyncData() {
    try {
      const res = await axios.get("/api/getEvents");
      return { events: res.data };
    } catch (error) {
      console.error("Failed to fetch events:", error);
      return { events: [] };
    }
  },
  methods: {
    formatDate(date) {
      return new Date(date).toLocaleDateString();
    },
  },
};
</script>

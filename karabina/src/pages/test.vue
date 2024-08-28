<template>
  <div>
    <h1>イベント一覧</h1>
    <ul>
      <li v-for="event in events" :key="event.id">
        {{ event.name }} - {{ event.date }} - {{ event.location }}
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      events: [], // ここで `events` プロパティを定義
    };
  },
  async asyncData({ $axios }) {
    try {
      const events = await $axios.$get("/api/getEvents");
      return { events };
    } catch (err) {
      console.error(err);
      return { events: [] };
    }
  },
};
</script>

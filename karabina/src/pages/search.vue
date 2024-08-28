<template>
  <div>
    <h3 class="title">イベント検索</h3>
    <div class="form">
      <i class="fa fa-search"></i>
      <input
        type="text"
        class="form-control form-input"
        v-model="keyword"
        placeholder="キーワードを入力..."
      />
    </div>

    <div class="form-group">
      <p class="event-details">イベントの種類</p>
      <div class="flex-box">
        <label class="selectbox">
          <select v-model="eventType">
            <option>体験</option>
            <option>祭り</option>
            <option>展覧会</option>
            <option>歴史</option>
            <option>神社仏閣</option>
            <option>遊び</option>
            <option>飲食</option>
          </select>
        </label>
      </div>
    </div>

    <div class="form-group">
      <p class="event-details">日時</p>
      <div class="flex-box">
        <input
          type="date"
          name="startdate"
          id="startdate"
          class="date-input"
          v-model="startDate"
        />
        <label> ~ </label>
        <input
          type="date"
          name="enddate"
          id="enddate"
          class="date-input"
          v-model="endDate"
        />
      </div>
    </div>

    <div class="form-group">
      <p class="event-details">年代</p>
      <div class="flex-box">
        <label class="selectbox">
          <select v-model="ageGroup">
            <option>未就学児</option>
            <option>小学生</option>
            <option>中高生</option>
            <option>大学生</option>
            <option>大人</option>
            <option>シニア</option>
          </select>
        </label>
      </div>
    </div>

    <div class="form-group">
      <p class="event-details">場所</p>
      <div class="flex-box">
        <label class="selectbox">
          <select v-model="location">
            <option>奈良市（ならし）</option>
            <option>大和高田市（やまとたかだし）</option>
            <option>大和郡山市（やまとこおりやまし）</option>
            <option>天理市（てんりし）</option>
            <option>橿原市（かしはらし）</option>
            <option>桜井市（さくらいし）</option>
            <option>五條市（ごじょうし）</option>
            <option>御所市（ごせし）</option>
            <option>生駒市（いこまし）</option>
            <option>香芝市（かしばし）</option>
            <option>葛城市（かつらぎし）</option>
            <option>宇陀市（うだし）</option>
            <option>山添村（やまぞえむら）</option>
            <option>平群町（へぐりちょう）</option>
            <option>三郷町（さんごうちょう）</option>
            <option>斑鳩町（いかるがちょう）</option>
            <option>安堵町（あんどちょう）</option>
            <option>川西町（かわにしちょう）</option>
            <option>三宅町（みやけちょう）</option>
            <option>田原本町（たわらもとちょう）</option>
            <option>曽爾村（そにむら）</option>
            <option>御杖村（みつえむら）</option>
            <option>高取町（たかとりちょう）</option>
            <option>明日香村（あすかむら）</option>
            <option>上牧町（かんまきちょう）</option>
            <option>王寺町（おうじちょう）</option>
            <option>広陵町（こうりょうちょう）</option>
            <option>河合町（かわいちょう）</option>
            <option>吉野町（よしのちょう）</option>
            <option>大淀町（おおよどちょう）</option>
            <option>下市町（しもいちちょう）</option>
            <option>黒滝村（くろたきむら）</option>
            <option>天川村（てんかわむら）</option>
            <option>野迫川村（のせがわむら）</option>
            <option>十津川村（とつかわむら）</option>
            <option>下北山村（しもきたやまむら）</option>
            <option>上北山村（かみきたやまむら）</option>
            <option>川上村（かわかみむら）</option>
            <option>東吉野村（ひがしよしのむら）</option>
          </select>
        </label>
      </div>
    </div>

    <div class="form-group">
      <p class="event-details">誰と行く？？</p>
      <div class="flex-box">
        <label class="selectbox">
          <select v-model="companion">
            <option>ボッチ</option>
            <option>恋人</option>
            <option>男友達</option>
            <option>女友達</option>
            <option>家族</option>
            <option>同僚</option>
            <option>子供</option>
            <option>祖父母</option>
          </select>
        </label>
      </div>
    </div>
    <button class="search-button" @click="searchEvents">検索する</button>

    <!-- 検索結果の表示 -->
    <div v-if="searchResult" class="result">
      <h4>検索結果:</h4>
      <p>キーワード: {{ searchResult.keyword }}</p>
      <p>イベントの種類: {{ searchResult.eventType }}</p>
      <p>日時: {{ searchResult.startDate }} から {{ searchResult.endDate }}</p>
      <p>年代: {{ searchResult.ageGroup }}</p>
      <p>場所: {{ searchResult.location }}</p>
      <p>誰と行く: {{ searchResult.companion }}</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      keyword: "",
      eventType: "",
      startDate: "",
      endDate: "",
      ageGroup: "",
      location: "",
      companion: "",
      searchResult: null,
    };
  },
  methods: {
    searchEvents() {
      // 入力された値を取得して結果を表示する
      this.searchResult = {
        keyword: this.keyword,
        eventType: this.eventType,
        startDate: this.startDate,
        endDate: this.endDate,
        ageGroup: this.ageGroup,
        location: this.location,
        companion: this.companion,
      };
      console.log("検索結果:", this.searchResult);

      this.$router.push({
        path: "/result",
        query: this.searchResult,
      });
    },
  },
};
</script>

<style scoped>
.title {
  text-align: center;
  margin-top: 20px;
  margin-bottom: 10px;
  font-size: 25px;
  font-weight: bold;
}

.form {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 0px;
  margin-bottom: 0px;
}

.form .fa-search {
  position: absolute;
  top: 50%;
  left: 10px;
  transform: translateY(-50%);
  color: #9ca3af;
}

.form-input {
  height: 40px;
  text-indent: 33px;
  border-radius: 10px;
  width: 70%;
  max-width: 400px;
  border: 1px solid #000000;
  margin-bottom: 10px;
}

.form-input:focus {
  box-shadow: none;
  border: none;
}

.selectbox {
  display: inline-flex;
  align-items: center;
  position: relative;
  margin-bottom: 0px;
  width: 100%;
}

.selectbox::after {
  position: absolute;
  right: 15px;
  width: 10px;
  height: 7px;
  background-color: #535353;
  clip-path: polygon(0 0, 100% 0, 50% 100%);
  content: "";
  pointer-events: none;
}

.selectbox select {
  appearance: none;
  width: 100%;
  height: 40px;
  padding: 0.4em calc(0.8em + 30px) 0.4em 0.8em;
  border: 1px solid #000000; /* 枠線の色を黒に変更 */
  border-radius: 3px;
  background-color: #fff;
  color: #333333;
  font-size: 1em;
  cursor: pointer;
}

.date-input {
  height: 40px;
  border: 1px solid #000000; /* 枠線の色を黒に変更 */
  border-radius: 3px;
  background-color: #fff;
  color: #333333;
  font-size: 1em;
  width: 48%;
}

.flex-box {
  display: flex;
  justify-content: space-between;
  text-align: center;
  align-items: center;
  width: 100%;
}

.form-group {
  margin-left: 20px;
  margin-right: 20px;
  margin-bottom: 15px;
}

.event-details {
  margin-bottom: 5px;
  margin-left: 5px;
}

.search-button {
  width: 200px;
  height: 55px;
  border-radius: 5px;
  background-color: burlywood;
  max-width: 60%;
  display: block;
  margin: auto;
  margin-top: 50px;
  font-size: 25px;
  font-weight: bold;
}
</style>

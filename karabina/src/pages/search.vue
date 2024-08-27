<template>
  <div>
    <h3 class="title">イベント検索</h3>
    <div class="form">
      <i class="fa fa-search"></i>
      <input type="text" class="form-control form-input" placeholder="キーワードを入力...">
    </div>

    <div class="form-group">
      <p class="event-details">イベントの種類</p>
      <div class="flex-box">
        <label class="selectbox">
          <select>
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
        <input type="date" name="startdate" id="startdate" class="date-input">
        <label> ~ </label>
        <input type="date" name="enddate" id="enddate" class="date-input">
      </div>
    </div>

    <div class="form-group">
      <p class="event-details">年代</p>
      <div class="flex-box">
        <label class="selectbox">
          <select>
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
          <select>
            <option>optionの例1</option>
            <option>optionの例2</option>
            <option>optionの例3</option>
          </select>
        </label>
      </div>
    </div>

    <div class="form-group">
      <p class="event-details">誰と行く？？</p>
      <div class="flex-box">
        <label class="selectbox">
          <select>
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
    <button class="search-button">検索する</button>
  </div>
</template>



<style scoped>
  .title {                  
    text-align: center;
    margin-bottom: 0px;
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
    content: '';
    pointer-events: none;
  }

  .selectbox select {
    appearance: none;
    width: 100%;
    height: 40px;
    padding: .4em calc(.8em + 30px) .4em .8em;
    border: 1px solid #d0d0d0;
    border-radius: 3px;
    background-color: #fff;
    color: #333333;
    font-size: 1em;
    cursor: pointer;
  }

  .date-input {
    height: 40px;
    border: 1px solid #d0d0d0;
    border-radius: 3px;
    background-color: #fff;
    color: #333333;
    font-size: 1em;
    width: 48%; /* 日付選択フィールドをセレクトボックスと揃える */
  }

  .flex-box {
    display: flex;
    justify-content: space-between;
    text-align: center;
    align-items: center; 
    width: 100%;
  }

  .form-group {
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
    background-color:burlywood;
    max-width: 60%;
    display: block;
    margin: auto;
    margin-top: 50px;
    font-size: 25px;
    font-weight: bold;
  }
</style>

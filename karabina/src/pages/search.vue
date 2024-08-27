<template>
  <div>
    <h1 class="title">イベント検索</h1>
    <div class="form">
      <i class="fa fa-search"></i>
      <input type="text" class="form-control form-input" placeholder="キーワードを入力...">
    </div>

    <div class="flex-box">
      <h2>イベントの種類</h2>
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

      <h2>日付</h2>
      <label class="selectbox">
        <select>
          <option>optionの例1</option>
          <option>optionの例2</option>
          <option>optionの例3</option>
        </select>
      </label>

      <h2>年代</h2>
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

      <h2>場所</h2>
      <label class="selectbox">
        <select>
          <option>optionの例1</option>
          <option>optionの例2</option>
          <option>optionの例3</option>
        </select>
      </label>

      <h2>誰と行く？？</h2>
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
</template>

<style scoped>
  .title {                  
    text-align: center;
    margin-bottom: 20px;
  }
  
  .form {
    display: flex;
    justify-content: center; 
    align-items: center;
    margin-top: 20px;
    margin-bottom: 10px; 
  }
  
  .form .fa-search {        
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    color: #9ca3af;
  }
  
  .form-input {
    height: 55px;
    text-indent: 33px;
    border-radius: 10px;
    width: 70%;
    max-width: 400px; /* フォームの最大幅を指定 */
  }
  
  .form-input:focus {
    box-shadow: none;
    border: none;
  }

  .selectbox {
    display: inline-flex;
    align-items: center;
    position: relative;
    margin-bottom: 15px;
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
    min-width: 230px;
    height: 2.8em;
    padding: .4em calc(.8em + 30px) .4em .8em;
    border: 1px solid #d0d0d0;
    border-radius: 3px;
    background-color: #fff;
    color: #333333;
    font-size: 1em;
    cursor: pointer;
  }

  .flex-box {
    display: flex;
    flex-direction: column;
    text-align: center;
    align-items: center; 
  }
</style>

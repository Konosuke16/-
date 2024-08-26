<template>
    <div>
      <h1 class="title">イベント検索</h1>
      <div class="form">
        <i class="fa fa-search"></i>
        <input type="text" class="form-control form-input" placeholder="キーワードを入力...">
      </div>
      <div class="flex-box">
      <label class="selectbox-3">
    <select>
        <option>optionの例1</option>
        <option>optionの例2</option>
        <option>optionの例3</option>
    </select>
</label>

<label class="selectbox-3">
    <select>
        <option>optionの例1</option>
        <option>optionの例2</option>
        <option>optionの例3</option>
    </select>
</label>

<label class="selectbox-3">
    <select>
        <option>optionの例1</option>
        <option>optionの例2</option>
        <option>optionの例3</option>
    </select>
</label>
    </div>
    </div>
  </template>

  <style scoped>
  .title {                  /*イベント検索を表示 */
    text-align: center;
    margin-bottom: 20px;
  }
  
  .form {
    display: flex;
    justify-content: center; 
    align-items: center;
    margin-top: 20px; 
  }
  
  .form .fa-search {        /*キーワードを入力を表示*/ 
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

  .selectbox-3 {
    display: inline-flex;
    align-items: center;
    position: relative;
}

.selectbox-3::after {
    position: absolute;
    right: 15px;
    width: 10px;
    height: 7px;
    background-color: #535353;
    clip-path: polygon(0 0, 100% 0, 50% 100%);
    content: '';
    pointer-events: none;
}

.selectbox-3 select {
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
}

  </style>
  
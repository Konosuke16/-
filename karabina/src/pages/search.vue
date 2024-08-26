<template>
    <div>
      <h1 class="title">イベント検索</h1>
      <div class="form">
        <i class="fa fa-search"></i>
        <input type="text" class="form-control form-input" placeholder="キーワードを入力...">
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
  </style>
  
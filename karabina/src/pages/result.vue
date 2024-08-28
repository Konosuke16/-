<template>
    <div>
      <body>
        <h1 class="title">検索結果</h1>
        <div class="result-box">
          <img src="https://www.veltra.com/jp/guide/wp-content/uploads/2023/09/pixta_84998121_M.jpg">
          <div class="text-content">
            <h1 class="result-title">奈良祭り</h1>
            <p class="address">奈良県奈良市123-456</p>
            <p class="details">この祭りは毎年8月に開催され、花火や屋台が特徴です。</p>
          </div>
        </div>
      </body>
    </div>   
  </template>
  
  <style scoped>
    body {
      background-color: antiquewhite;
    }
    
    .title {
      text-align: center;
      margin-top: 20px;
      margin-bottom: 10px;
      font-size: 25px;
      font-weight: bold;
    }
  
    .result-box {
      background-color: white;
      height: 160px;
      width: 360px;
      margin-left: 30px;
      display: flex;
      align-items: center;
    }
  
    img {
      margin-left: 10px;
      height: 140px;
      width: 140px;
    }
  
    .text-content {
        margin-left: 20px;
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        margin-top: -50px;
        margin-left: 10px;
    }

  
    .result-title {
      font-size: 20px;
      font-weight: bold;
      margin-bottom: 5px;
    }
  
    .address, .details {
      font-size: 14px;
      margin: 0;
    }
  
    .address {
      font-weight: bold;
    }
  </style>
  
  <script>
    // データベースからのデータ取得を模擬するためのJavaScriptコードの例
    document.addEventListener('DOMContentLoaded', () => {
      // これらの値は実際にはデータベースから取得される
      const title = "奈良祭り";
      const address = "奈良県奈良市123-456";
      const details = "この祭りは毎年8月に開催され、花火や屋台が特徴です。";
  
      // 取得した値をHTMLに挿入
      document.querySelector('.result-title').textContent = title;
      document.querySelector('.address').textContent = address;
      document.querySelector('.details').textContent = details;
    });
  </script>
  
<template>
  <header class="header bg-yellow-500">
    <div class="navtext-container">
      <div class="navtext">奈良MAP</div>
    </div>
    <input type="checkbox" class="menu-btn" id="menu-btn" />
    <label for="menu-btn" class="menu-icon"
      ><span class="navicon"></span
    ></label>
    <ul class="menu bg-yellow-500">
      <li class="top"><a href="/">TOP</a></li>
      <li><a href="/search">イベント検索</a></li>
      <li><a href="/my_page">マイページ</a></li>
      <li><a href="/allEvents">イベント一覧</a></li>
    </ul>
  </header>
</template>

<script>
export default {
  name: "Header",
  data() {
    return {
      message: "Hello, World!",
    };
  },
};
</script>

<style scoped>
/* Nav items */
.menu {
  list-style: none;
  position: absolute;
  width: 100%;
  height: auto;
  top: 0;
  margin-top: 52px;
  padding: 0 0 10px 0;
  clear: both;
  transition: 0.3192s cubic-bezier(0.04, 0.04, 0.12, 0.96) 0.1008s;
  transform: scale(1, 0);
  transform-origin: top;
  z-index: 1000; /* 最前面に表示 */
}

/* Hamburger menu button */
.menu-btn:checked ~ .menu {
  transform: scale(1, 1);
  transform-origin: top;
  transition: 0.3192s cubic-bezier(0.04, 0.04, 0.12, 0.96) 0.1008s;
}

/* Hamburger menu text */
.menu a {
  text-decoration: none;
  font-weight: 500;
  letter-spacing: 2px;
  font-size: 16px;
  text-transform: capitalize;
  color: #000;
  opacity: 0;
  transition: 0.5s;
}

.menu li {
  border-top: 1px solid rgb(0, 0, 0);
  padding: 15px 0;
  margin: 0 54px;
  opacity: 0;
  transition: 0.5s;
}

.menu-btn:checked ~ .menu a,
.menu-btn:checked ~ .menu li {
  opacity: 1;
  transition: 0.3192s cubic-bezier(0.04, 0.04, 0.12, 0.96) 0.2s;
}

.menu-btn {
  display: none;
}

.menu-icon {
  display: inline-block;
  position: relative;
  cursor: pointer;
  padding: 24px 14px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.navicon {
  background: #000;
  display: block;
  height: 3px;
  width: 26px;
  position: relative;
  transition: 0.3192s cubic-bezier(0.04, 0.04, 0.12, 0.96) 0.1008s;
}

.navicon:before,
.navicon:after {
  content: "";
  display: block;
  height: 100%;
  width: 100%;
  position: absolute;
  background: #000;
  transition: 0.3192s cubic-bezier(0.04, 0.04, 0.12, 0.96) 0.1008s;
}

.navicon:before {
  top: 9px;
}

.navicon:after {
  bottom: 9px;
}

/* Hamburger Menu Animation Start */
.menu-btn:checked ~ .menu-icon .navicon:before {
  transform: rotate(-45deg);
}

.menu-btn:checked ~ .menu-icon .navicon:after {
  transform: rotate(45deg);
}

.menu-btn:checked ~ .menu-icon:not(.steps) .navicon:before {
  top: 0;
}
.menu-btn:checked ~ .menu-icon:not(.steps) .navicon:after {
  bottom: 0;
}

.menu-btn:checked ~ .menu-icon .navicon {
  background: rgba(0, 0, 0, 0);
  transition: 0.2192s cubic-bezier(0.04, 0.04, 0.12, 0.96) 0.1008s;
}
/* Hamburger Menu Animation End */

/* Navbar Container */
.navtext-container {
  width: 100%;
  height: 52px;
  position: absolute;
  box-sizing: border-box;
  display: flex;
  justify-content: center;
  align-items: center;
}

/* Navbar Text */
.navtext {
  position: absolute;
  text-transform: uppercase;
  color: #000;
  letter-spacing: 4px;
  font-size: 20px;
}
</style>

<template>
  <div class="homepage">
    <div class="main">NOW</div>
    <div class="side">
      <div class="biggest">HOME</div>
      <div class="loyals">PAGE</div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.homepage {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 5%;
  align-items: center;
  background: color('light', 'base');
  .main {
    // background: color('dark', 'base');
  }
  .side {
    display: grid;
    grid-template-columns: 1fr;
    // grid-template-rows: 25% 70%;
    // row-gap: 5%;
    // background: color('dark', 'darkest');
}
@include screen('small', 'medium') {
  .homepage {
    grid-template-columns: 1fr;
  }
}
</style>

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
  border: 1px solid black;
  // display: grid;
  // grid-template-columns: 75% 20%;
  // grid-template-rows: 500px;
  // column-gap: 5%;
  // background: color('light', 'base');
  .main {
    // background: color('dark', 'base');
  }
  .side {
    display: grid;
    grid-template-columns: 1fr;
    // grid-template-rows: 25% 70%;
    // row-gap: 5%;
    // background: color('dark', 'darkest');
    .biggest .loyals {
      // background: color('light', 'lightest');
    }
  }
}
@include screen('small', 'medium') {
  .homepage {
  }
}
</style>

<template>
  <nav class="nav-bar">
    <b-nav class="items">
      <NavItem title="ESTOQUE" path="/inventory" />
      <NavItem title="FINANÇAS" path="/finances" />
    </b-nav>
  </nav>
</template>

<style lang="scss" scoped>
.nav-bar {
  .items {
    display: grid;
    grid-auto-flow: column;
    column-gap: 0.5em;
  }
}
</style>

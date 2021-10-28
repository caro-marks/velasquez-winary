<template>
  <header class="header">
    <NuxtLink to="/">
      <Logo logo="Vinícola Velasquez" />
    </NuxtLink>
    <NavBar />
  </header>
</template>

<style lang="scss" scoped>
.header {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  padding: 0 1rem;
  margin: 0 0.5rem;
  box-shadow: -1px 4px 5px -1px rgba(color('dark'), 0.85);
  background: color('dark', 'darkest');
  border-radius: 35px;
}
</style>

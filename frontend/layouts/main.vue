<template>
  <div class="main-layout">
    <Header />
    <Container>
      <Nuxt />
    </Container>
    <Footer />
  </div>
</template>

<style lang="scss" scoped>
.main-layout {
  margin-top: 1.5rem;
  display: grid;
  grid-gap: 3rem;
  .header {
    height: fit-content;
  }
  .container {
    padding-bottom: 2rem;
  }
  .footer {
    position: absolute;
    bottom: 0;
    left: 0;
  }
}
</style>

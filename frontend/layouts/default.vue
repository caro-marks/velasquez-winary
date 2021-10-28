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
  margin-top: 2.313rem;
  display: grid;
  grid-gap: 3.75rem;
  .container {
    padding-bottom: 1.75rem;
  }
  .footer {
    position: absolute;
    bottom: 0;
    left: 0;
  }
}
</style>

<template>
  <div>
    <footer class="footer">
      <Container>
        <SelfLogo />
        <SocialNetwork />
      </Container>
    </footer>
  </div>
</template>

<style lang="scss" scoped>
.footer {
  width: 100%;
  height: 80px;
  background: color(dark, darkest);
  .container {
    display: grid;
    height: 100%;
    grid-auto-flow: column;
    justify-content: space-around;
    align-items: center;
    p {
      color: color('light');
    }
  }
}
</style>

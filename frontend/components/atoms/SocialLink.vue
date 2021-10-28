<template>
  <a class="social-link" :href="to">
    <img :src="iconPath" :alt="name" />
  </a>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  props: {
    name: { type: String, required: true },
    icon: { type: String, required: true },
    to: { type: String, required: true }
  },
  computed: {
    iconPath(): string {
      return require(`@/assets/imgs/icons/${this.icon}`)
    }
  }
})
</script>

<style lang="scss" scoped>
.social-link {
  border: 1px solid color('light', 'lightest');
  width: 35px;
  height: 35px;
  border-radius: 3em;
  display: grid;
  justify-items: center;
  align-items: center;
  transition: transform 0.2s linear;
  &:hover {
    transform: scale(1.1);
  }
  img {
    width: 18px;
    height: 18px;
  }
}
</style>

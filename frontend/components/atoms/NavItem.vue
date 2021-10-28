<template>
  <b-nav-item class="nav-item">
    <NuxtLink :to="path">
      {{ title }}
    </NuxtLink>
  </b-nav-item>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  props: {
    title: { type: String, required: true },
    path: { type: String, required: true }
  }
})
</script>

<style lang="scss" scoped>
.nav-item {
  a {
    color: color('light', 'lightest');
    border-radius: 15px;
    transition: all 0.5s;
    &:hover {
      background: rgba(color('dark'), 0.7);
      text-decoration: none;
      font-weight: bold;
    }
  }
}
</style>

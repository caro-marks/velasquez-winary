<template>
  <div class="logo">
    <h3>
      {{ logo }}
    </h3>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  props: {
    logo: {
      type: String,
      required: true
    }
  }
})
</script>

<style lang="scss" scoped>
.logo {
  transition: all 0.5s;
  &:hover {
    transform: scale(1.05);
    cursor: pointer;
  }
  h3 {
    color: color('light', 'lightest');
    margin: 5px;
    letter-spacing: 0.1rem;
    white-space: nowrap;
  }
}
</style>

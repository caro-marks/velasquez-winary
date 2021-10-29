<template>
  <div class="client">
    <span>{{ name }}</span>
    <p>
      <strong>{{ total }}</strong>
    </p>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  props: {
    name: { type: String, required: true },
    total: { type: Number, required: true }
  }
})
</script>

<style lang="scss" scoped>
.client {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: center;
  text-align: center;
  span {
    font-size: 17px;
  }
  p {
    font-size: 16px;
  }
}
</style>

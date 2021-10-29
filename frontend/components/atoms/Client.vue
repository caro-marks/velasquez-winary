<template>
  <div>
    <b-button block class="client">
      <p>{{ name }}</p>
      <p>
        {{ total }}
      </p>
    </b-button>
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
  background: color('dark');
  border: 0;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  text-align: center;
  font-size: 17px;
  padding: 0.1rem 0;
  transition: all 0.5s;
  &:hover {
    background: rgba(color('dark', 'darkest'), 0.3);
  }
}
</style>

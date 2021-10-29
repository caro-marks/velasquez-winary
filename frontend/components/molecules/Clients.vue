<template>
  <div class="clients">
    <div class="head">
      <span>Nome</span>
      <span>{{ quantity }}</span>
    </div>
    <ul class="details">
      <Client
        v-for="(detail, id) in details"
        :key="id"
        :name="detail.name"
        :total="detail.total"
      />
    </ul>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  props: {
    quantity: { type: String, required: true },
    details: { type: Array, required: true }
  }
})
</script>

<style lang="scss" scoped>
.clients {
  display: grid;
  grid-template-columns: 1fr;
  grid-template-rows: 1fr auto;
  gap: 1rem;
  .head {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
    text-align: center;
    font-size: 18px;
    font-weight: bolder;
  }
  .details {
    display: grid;
    grid-template-rows: auto;
    row-gap: 0.2rem;
  }
}
</style>

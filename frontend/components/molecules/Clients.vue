<template>
  <div class="clients">
    <div class="head">
      <p>Nome</p>
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
  grid-template-rows: 5% auto;
  .head {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
    align-items: center;
    text-align: center;
    span {
      font-size: 18px;
      font-weight: bolder;
      padding: 0.1rem 0;
    }
    p {
      font-size: 18px;
      font-weight: bolder;
      padding: 0.1rem 0;
    }
  }
  .details {
    margin: 0.1rem;
    padding: 0.1rem;
    display: grid;
    grid-template-rows: auto;
    row-gap: 0.1rem;
  }
}
</style>

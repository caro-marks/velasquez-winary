<template>
  <div class="clients">
    <div class="head">
      <span>Nome</span>
      <span>{{ typeOf }}</span>
    </div>
    <b-list-group class="details">
      <Client
        v-for="(detail, id) in details"
        :key="id"
        :name="detail.name"
        :total="defineType(detail.total)"
        :recommendation="detail.recommendation"
      />
    </b-list-group>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  props: {
    typeOf: { type: String, required: true },
    details: { type: Array, required: true }
  },
  methods: {
    defineType(total) {
      if (this.typeOf === 'Quantidade') {
        return `${total} x`
      } else {
        return `R$ ${total.toFixed(2)}`
      }
    }
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

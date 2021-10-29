<template>
  <div class="homepage">
    <div class="main">
      <Clients quantity="Total de compras" :details="clientsData" />
    </div>
    <div class="side">
      <div class="biggest">
        <b-button v-b-modal.modal-1>Sells</b-button>
        <b-modal id="modal-1" title="Raw Sells">{{ sells[0] }}</b-modal>
      </div>
      <div class="loyals">
        <b-button v-b-modal.modal-2>Clients</b-button>
        <b-modal id="modal-2" title="Raw Clients">{{ clients }}</b-modal>
      </div>
    </div>
  </div>
</template>
<script lang="ts">
import Vue from 'vue'

interface ClientForm {
  nome: String
  cpf: String
}

interface Wine {
  produto: String
  variedade: String
  pais: String
  categoria: String
  safra: String
  preco: Number
}

interface SellForm {
  cliente: String
  itens: Array<Wine>
  total: Number
}

interface ClientData {
  name: String
  total: Number
}

export default Vue.extend({
  data() {
    return {
      clients: [] as ClientForm[],
      sells: [] as SellForm[]
    }
  },
  computed: {
    clientsData(): ClientData[] {
      return [
        { name: 'Marcos', total: 5000 },
        { name: 'Amanda', total: 4500 }
      ]
    }
  },
  created() {
    this.clients = require('@/static/data/clients.json')
    this.sells = require('@/static/data/sells.json')
  }
})
</script>
<style lang="scss" scoped>
.homepage {
  border-radius: 2rem;
  padding: 0.5rem;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 1rem;
  color: color('light', 'lightest');
  background: rgba(color('dark', 'base'), 0.89);
  .main {
    padding: 1rem;
    border-radius: 2rem;
    background: color('dark', 'base');
  }
  .side {
    background: color('dark', 'base');
    padding: 1rem;
    border-radius: 2rem;
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 1fr 3fr;
    grid-gap: 50px;
    justify-items: center;
    align-content: center;
  }
}
@include screen('small', 'medium') {
  .homepage {
    grid-template-columns: 1fr;
  }
}
</style>

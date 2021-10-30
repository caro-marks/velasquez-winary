<template>
  <div class="homepage">
    <div class="main">
      <Clients type-of="Total de compras" :details="getData('quality')" />
    </div>
    <div class="side">
      <div class="biggest">
        <b-button v-b-modal.modal-1 block>Sells</b-button>
        <b-modal id="modal-1" title="Raw Clients">
          <p v-for="sell in sells" :key="sell.cliente">
            {{ sell.valorTotal }}
          </p>
        </b-modal>
      </div>
      <div class="loyals">
        <Clients type-of="Quantidade" :details="getData('quantity')" />
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
  valorTotal: Number
}

interface Shops {
  itens: Array<Wine>
  total: Number
}

interface GroupedData {
  cpf: String
  shops: Array<Shops>
}

interface ClientData {
  name: String
  total: Number
  recommendation: Array<Wine>
}

export default Vue.extend({
  data() {
    return {
      clients: [] as ClientForm[],
      sells: [] as SellForm[]
    }
  },
  computed: {
    groupedClients(): GroupedData[] {
      const groupedShops = this.sells.reduce((groups, client) => {
        const cpf =
          client.cliente.length === 14
            ? client.cliente
            : client.cliente.substring(1)
        const cli = this.clients.find(
          (obj) => obj.cpf.replace('-', '.') === cpf
        )
        groups[cli.nome] = groups[cli.nome] || []
        groups[cli.nome].push({
          itens: client.itens,
          total: client.valorTotal
        } as Shops)
        return groups
      }, [])
      return groupedShops
    }
  },
  created() {
    this.clients = require('@/static/data/clients.json')
    this.sells = require('@/static/data/sells.json')
  },
  methods: {
    getData(kind: string) {
      if (kind === 'quantity') {
        const grouped = [] as ClientData[]
        for (const client in this.groupedClients) {
          grouped.push({
            name: client,
            total: this.groupedClients[client].length,
            recommendation: this.getRecommend(this.groupedClients[client])
          })
        }
        return grouped.sort((a, b) => {
          return b.total - a.total
        })
      } else {
        const grouped = [] as ClientData[]
        for (const client in this.groupedClients) {
          grouped.push({
            name: client,
            total: this.groupedClients[client].reduce((total, value) => {
              return total + value.total
            }, 0),
            recommendation: this.getRecommend(this.groupedClients[client])
          })
        }
        return grouped.sort((a, b) => {
          return b.total - a.total
        })
      }
    },
    getRecommend(groupedClient: Array<Shops>) {
      const lastShop = groupedClient[groupedClient.length - 1].itens
      return lastShop.reduce((cheap, itens) => {
        return itens.preco < cheap.preco ? itens : cheap
      })
    }
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
    grid-template-rows: 1fr auto;
    grid-gap: 1rem;
  }
}
@include screen('small', 'medium') {
  .homepage {
    grid-template-columns: 1fr;
  }
}
</style>

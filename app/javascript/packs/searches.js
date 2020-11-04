import Vue from 'vue/dist/vue.esm'
import Searches from '../searches.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#searches',
    data: {
      message: "Can you say hello?"
    },
    components: { Searches }
  })
})
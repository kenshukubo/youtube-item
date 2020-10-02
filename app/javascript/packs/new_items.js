import Vue from 'vue/dist/vue.esm'
import Newitems from '../new_items.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#new_items',
    data: {
      message: "Can you say hello?"
    },
    components: { Newitems }
  })
})
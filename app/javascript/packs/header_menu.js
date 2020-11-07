import Vue from 'vue/dist/vue.esm'
import Headermenu from '../header_menu.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#header_menu',
    data: {
      message: "Can you say hello?"
    },
    components: { Headermenu }
  })
})
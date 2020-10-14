import Vue from 'vue/dist/vue.esm'
import Youtuberitems from '../youtuber_items.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#youtuber_items',
    data: {
      message: "Can you say hello?"
    },
    components: { Youtuberitems }
  })
})
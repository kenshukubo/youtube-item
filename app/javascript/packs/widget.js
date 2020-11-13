import Vue from 'vue/dist/vue.esm'
import Widget from '../widget.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#widget',
    data: {
      message: "Can you say hello?"
    },
    components: { Widget }
  })
})
<template>
  <div>
    <h2>新着アイテム</h2>
    <div>
      <div v-for="(post, index) in posts" :key="index" >
        <h3>{{post.title}}</h3>
        <div v-for="(item, index) in post.items" :key="index">
          <h4>{{item.name}}</h4>
          <p>{{item.price}}円</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'packs/axios'

export default {
  data: function () {
    return {
      posts: [],
    }
  },
  created () {
      var self = this;
      let url = `api/v1/posts.json`;
      axios.get(url)
      .then(function(res) {
        self.posts = res.data.posts;
      })
      .catch(function(error) {
        console.log(error);
      });
    },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

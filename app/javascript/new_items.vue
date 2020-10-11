<template>
  <div>
    <h2>新着アイテム</h2>
    <div>
      <div v-for="(post, index) in posts" :key="index" >
        <h3>{{post.title}}</h3>
        <img :src="post.thumbnail_url">
        <div v-for="(item, index) in post.items" :key="index" class="item-content">
          <img :src="item.image.thumb_mini.url">
          <div class="item-info">
            <h3 class="item-name">{{item.name}}</h3>
            <p class="item-price">{{item.price}}円<span class="tax-include">(税込)</span></p>
            <ul>
              <li><a class="item-link">楽天で詳細をみる</a></li>
              <li><a :href="item.amazon_url" class="item-link" target="_blank">Amazonで詳細をみる</a></li>
            </ul>
          </div>
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
.item-content{
  display: flex;
  border: 1px solid #e7e7e7;
  border-radius: 3px;
  padding: 30px;
}
.item-info{
  display: flex;
  flex-direction: column;
}
.item-name{
  margin-bottom: 5px;
  font-size: 20px;
  line-height: 1.2;
}
.item-price{
  color: #fd381e;
  font-size: 20px;
  font-weight: bold;
  letter-spacing: -.03em;
  line-height: 24px;
  margin-bottom: 12px;
}
.tax-include{
  font-size: 12px !important;
}
li{
  margin-top: 10px;
}
.item-link{
  box-sizing: border-box;
  border-radius: 3px;
  color: #fff;
  cursor: pointer;
  text-align: center;
  background-color: #02bb80;
  padding: 10px;
  font-size: 15px;
  font-weight: bold;
  line-height: 1.5;
  box-shadow: 0 -4px 0 rgba(0,0,0,0.1) inset;
  display: block !important;
}
.item-link:hover{
  opacity: .8;
}
</style>

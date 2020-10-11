<template>
  <div>
    <h2>新着アイテム</h2>
    <div>
      <div v-for="(post, index) in posts" :key="index" class="post-content">
        <h3>{{post.title}}</h3>
        <div class="post-info">
          <img :src="post.thumbnail_url">
          <div class="post-detail">
            <p>Youtuber：<a>{{post.youtuber}}</a></p>
            <p>紹介商品数：{{post.items_num}}</p>
          </div>
        </div>
        <div v-if="isActive !== index" @click="active(index)" class="item-list-btn">アイテム一覧を表示</div>

        <div :class="{'is-active' : isActive === index}" class="item-list-switch">
          <div v-for="(item, index) in post.items" :key="index" class="item-content">
            <img :src="item.image.thumb_mini.url">
            <div class="item-info">
              <h3 class="item-name">{{item.name}}</h3>
              <p class="item-price">{{item.price}}円<span class="tax-include">(税込)</span></p>
              <ul>
                <li><a :href="item.rakuten_url" class="item-link" target="_blank">楽天で詳細をみる</a></li>
                <li><a :href="item.amazon_url" class="item-link" target="_blank">Amazonで詳細をみる</a></li>
              </ul>
            </div>
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
      isActive: "",
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
  methods: {  
    active(i) {
      if(this.isActive === i){
        this.isActive = null;
      }else{
        this.isActive = i;
      }
    }
  }
}
</script>

<style scoped>
.post-content{
  margin-bottom: 30px;
}
.post-info{
  display: flex;
  border-radius: 3px;
  margin-bottom: 5px;
  background-color: #f7f7f7;
}
.post-detail{
  padding: 15px;
}
.item-list-btn{
  display: flex;
  align-items: center;
  justify-content: center;
  color: #787c7b;
  border: 1px solid #e7e7e7;
  border-radius: 3px;
  min-height: 36px;
  cursor: pointer;
}
.item-list-btn:hover{
  opacity: .8;
}
.item-list-switch{
  display: none;
}
.item-content{
  display: flex;
  border: 1px solid #e7e7e7;
  border-radius: 3px;
  padding: 30px;
}
.is-active{
  display: block;
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

<template>
  <div>
    <div class="youtuber-info">
      <img :src="youtuber.image" class="channel-img">
      <div>
        <h2><span class="youtuber-name">{{youtuber.name}}</span> のおすすめアイテム</h2>
        <a :href="`https://www.youtube.com/channel/${youtuber.channelId}`" target="_blank" class="channel-link">Youtubeチャンネルへ</a>
      </div>
    </div>
    <div v-for="(post, index) in posts" :key="index" class="post-content">
      <div class="post-info">
        <img :src="post.thumbnail_url" class="post-img">
        <div class="post-detail">
          <h3 class="post-title">{{post.title}}</h3>
          <a :href="`https://www.youtube.com/channel/${youtuber.channelId}`" target="_blank" class="channel-link">Youtubeリンク</a>
        </div>
      </div>
      <div v-if="isActive !== index" @click="active(index)" class="item-list-btn">アイテム一覧を表示<span class="item-num">(商品数：{{post.items_num}})</span></div>

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
</template>

<script>
import axios from 'packs/axios'
export default {
  data: function () {
    return {
      posts: [],
      youtuber: "",
      isActive: "",
    }
  },
  created () {
    var self = this;
    self.id = window.location.pathname.split("/").slice(-1)[0];
    let url = `/api/v1/youtubers/${self.id}.json`;
    axios.get(url)
    .then(function(res) {
      self.posts = res.data.posts;
      self.youtuber = res.data.youtuber;
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
.youtuber-info{
  display: flex;
  align-items: center;
  margin-bottom: 60px;
}
.channel-img{
  border-radius: 100%;
  object-fit: cover;
  margin-right: 15px;
}
.youtuber-name{
  font-size: 32px;
}
.channel-link{
  color: #929292;
  cursor: pointer;
}
.channel-link:hover{
  text-decoration: underline;
}
.post-content{
  margin-bottom: 30px;
}
.post-info{
  display: flex;
  border-radius: 3px;
  margin-bottom: 5px;
}
.post-img{
  width: 150px;
}
.post-detail{
  padding-left: 15px;
}
.post-title{
  font-size: 20px;
}
.item-num{
  color: #929292;
  font-size: 10px;
}
.item-list-btn{
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  padding: 5px 0;
  color: #787c7b;
  border: 1px solid #e7e7e7;
  border-radius: 3px;
  min-height: 36px;
  cursor: pointer;
  font-weight: 600;
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

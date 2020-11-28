<template>
  <div>
    <div class="youtuber-info">
      <img :src="youtuber.image" class="channel-img">
      <div>
        <h2><span class="youtuber-name">{{youtuber.name}}</span> <br class="new-line">のおすすめアイテム</h2>
        <a :href="`https://www.youtube.com/channel/${youtuber.channelId}`" target="_blank" class="channel-link">Youtubeチャンネルへ</a>
      </div>
    </div>
    <div v-for="(post, index) in posts" :key="index" class="post-content">
      <div class="post-info">
        <img :src="post.thumbnail_url" class="post-img">
        <div class="post-detail">
          <h3 class="post-title">{{post.title}}</h3>
          <a :href="`https://www.youtube.com/watch?v=${post.video_id}`" target="_blank" class="channel-link">Youtubeリンク</a>
        </div>
      </div>
      <div v-if="!show[index]" @click="openMenu(index)" class="item-list-btn">
        <div>
          <span>アイテム一覧を表示</span>
          <img :src="arrowImage" class="arrow-img">
        </div>
        <span class="item-num">(商品数：{{post.items_num}})</span>
      </div>
      <div v-if="show[index]" @click="openMenu(index)" class="item-list-btn">
        <div>
          <span>閉じる</span>
        </div>
      </div>

      <ul v-if="show[index]" class="item-list-switch">
        <li v-for="(item, index) in post.items" :key="index" class="item-content">
          <div class="item-info">
            <img :src="item.image.thumb_mini.url" class="item-img">
            <div>
              <p class="item-name">{{item.name}}</p>
              <p class="item-price">{{item.price}}円<span class="tax-include">(税込)</span></p>
              <ul class="item-btn-wrapper">
                <li><a :href="item.rakuten_url" class="item-link" target="_blank" rel="noopener">楽天で詳細をみる</a></li>
                <li><a :href="item.amazon_url" class="item-link" target="_blank" rel="noopener">Amazonで詳細をみる</a></li>
              </ul>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from 'packs/axios'
import arrow_image from 'packs/components/youtuber_items/images/arrow.png'

export default {
  data: function () {
    return {
      posts: [],
      youtuber: "",
      isActive: "",
      arrowImage: arrow_image,
      show: {},
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
    openMenu(key) {
      this.$set(this.show, key, !this.show[key])
    }
  }
}
</script>

<style scoped lang="scss">
.youtuber-info{
  display: flex;
  align-items: center;
  margin-bottom: 60px;
  .channel-img{
    border-radius: 100%;
    object-fit: cover;
    margin-right: 15px;
  }
  .youtuber-name{
    font-size: 32px;
  }
  .new-line{
    display: none;
    @media(max-width: 767px){
      display: block;
    }
  }
  .channel-link{
    color: #929292;
    cursor: pointer;
    &:hover{
      text-decoration: underline;
    }
  }
}
.post-content{
  margin-bottom: 50px;
  .post-info{
    display: flex;
    border-radius: 3px;
    margin-bottom: 10px;
    .post-img{
      width: 150px;
      height: 110px
    }
    .post-detail{
      padding-left: 15px;
      .post-title{
        font-size: 20px;
        -webkit-box-orient: vertical;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        overflow: hidden;
        @media(max-width: 567px){
          font-size: 16px;
        }
      }
      .channel-link{
        color: #929292;
        @media(max-width: 567px){
          font-size: 12px;
        }
      }
    }
  }
  .item-list-btn{
    display: flex;
    align-items: center;
    flex-direction: column;
    justify-content: center;
    padding: 5px 0;
    color: #fff;
    border: 1px solid #e7e7e7;
    min-height: 36px;
    cursor: pointer;
    font-weight: 600;
    background-color: #ED7483;
    border-radius: 9999px;
    margin-bottom: 15px;
    &:hover{
      opacity: .8;
    }
    .item-num{
      font-size: 10px;
    }
    .arrow-img{
      width: 14px;
    }
  }
}
.item-list-switch{
  display: grid;
  grid-template-columns: repeat(2, auto);
  @media(max-width: 567px){
    display: flex;
    flex-direction: column;
  }
  .item-content{
    display: flex;
    border: 1px solid #e7e7e7;
    border-radius: 3px;
    padding: 30px;
    width: 100%;
    box-sizing: border-box;
    @media(max-width: 567px){
      padding: 15px;
    }
    .item-info{
      display: flex;
      flex-direction: column;
      align-items: center;
      @media(max-width: 567px){
        flex-direction: row;
      }
      .item-img{
        max-width: 160px;
        max-height: 160px;
        margin-bottom: 10px;
        @media(max-width: 567px){
          width: 120px;
          height: 120px;
          margin-right: 10px;
        }
      }
      .item-name{
        margin-bottom: 5px;
        font-size: 18px;
        line-height: 1.2;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
        overflow: hidden;
      }
      .item-price{
        color: #fd381e;
        font-size: 16px;
        font-weight: bold;
        letter-spacing: -.03em;
        line-height: 24px;
        margin-bottom: 12px;
      }
      .tax-include{
        font-size: 12px !important;
      }
      .item-btn-wrapper{
        width: 100%;
        li{
          margin-top: 10px;
        }
        .item-link{
          box-sizing: border-box;
          border-radius: 3px;
          color: #fff;
          cursor: pointer;
          text-align: center;
          background-color: #0BC7DB;
          padding: 10px;
          font-size: 15px;
          font-weight: bold;
          line-height: 1.5;
          box-shadow: 0 -4px 0 rgba(0,0,0,0.1) inset;
          display: block !important;
          @media(max-width: 567px){
            font-size: 11px;
          }
        }
        .item-link:hover{
          opacity: .8;
        }
      }
    }
  }
}
</style>

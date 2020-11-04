<template>
  <div>
    <ul class="search-list">
      <li class="search-item" @click="onYoutuber" :class="{active: searchYoutuber}">
        <span>Youtuber</span>
      </li>
      <li class="search-item" @click="onPost" :class="{active: searchPost}">
        <span>動画</span>
      </li>
      <li class="search-item" @click="onItem" :class="{active: searchItem}">
        <span>アイテム</span>
      </li>
    </ul>

    <div v-if="searchYoutuber">
      <ul class="youtuber-wrapper">
        <a v-for="(youtuber, index) in youtubers" :key="index" :href="`/youtubers/${youtuber.id}`">
          <li class="youtuber-info">
            <img :src="youtuber.image.url" class="channel-img">
            <span class="youtuber-name">{{youtuber.name}}</span>
          </li>
        </a>
      </ul>
    </div>

    <div v-if="searchPost">
      <ul class="posts-wrapper">
        <a v-for="(post, index) in posts" :key="index" :href="`/youtubers/${post.youtuber_id}`">
          <li class="post-info">
            <img :src="post.thumbnail.url" class="post-img">
            <h3 class="post-title">{{post.title}}</h3>
          </li>
        </a>
      </ul>
    </div>

    <div v-if="searchItem">

    </div>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      youtubers: "",
      posts: "",
      items: "",
      searchYoutuber: true,
      searchPost: false,
      searchItem: false
    }
  },
  created () {
    var self = this;
    const element = document.getElementById('searches');
    const data = JSON.parse(element.getAttribute('data'));
    self.youtubers = data.youtubers;
    self.posts = data.posts;
    self.items = data.items;
  },
  methods: {
    onYoutuber: function(){
      var self = this;
      self.searchYoutuber = true;
      self.searchPost = false;
      self.searchItem = false;
    },
    onPost: function(){
      var self = this;
      self.searchYoutuber = false;
      self.searchPost = true;
      self.searchItem = false;
    },
    onItem: function(){
      var self = this;
      self.searchYoutuber = false;
      self.searchPost = false;
      self.searchItem = true;
    }
  }
}
</script>

<style scoped lang="scss">
.search-list{
  display: flex;
  justify-content: space-around;
  margin-bottom: 20px;
  .search-item{
    width: 100%;
    padding: 12px 0 10px;
    border-bottom: 2px solid #e7e7e7;
    text-align: center;
    color: #999;
    font-weight: 400;
  }
}
.search-item:hover{
  color: #222;
  border-bottom: 2px solid #02bb80;
  cursor: pointer;
}
.active{
  color: #222 !important;
  border-bottom: 2px solid #02bb80 !important;
}
.youtuber-wrapper{
  display: grid;
  grid-gap: 10px;
  grid-template-columns: repeat(5, 1fr);
  grid-template-rows: auto;
  margin-bottom: 15px;
  .youtuber-info{
    display: flex;
    flex-direction: column;
    align-items: center;
    border: 1px solid #f0f0f0;
    border-radius: 10px;
    cursor: pointer;
    padding: 15px 5px 15px;
    &:hover{
      border: 1px solid #c7c7c7;
      .channel-img{
        opacity: .8;
      }
      .youtuber-name{
        text-decoration: underline;
      }
    }
  }
  .channel-img{
    width: 70px;
    border-radius: 100%;
    object-fit: cover;
    margin-bottom: 10px;
  }
  .youtuber-name{
    font-size: 13px;
    color: #222;
    font-weight: bold;
    height: 30px;
    width: 100%;
    -webkit-box-orient: vertical;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    text-align: center;
  }
}
.posts-wrapper{
  display: grid;
  grid-gap: 10px;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: auto;
  margin-bottom: 15px;
  .post-info{
    display: flex;
    flex-direction: column;
    cursor: pointer;
    &:hover{
      .post-img{
        opacity: .8;
      }
      .post-title{
        text-decoration: underline;
      }
    }
    .post-title{
      font-size: 13px;
      font-weight: bold;
      margin-bottom: 10px;
      -webkit-box-orient: vertical;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      overflow: hidden;
    }
    .post-img{
      height: 120px;
      object-fit: cover;
      width: 100%;
      margin-bottom: 10px; 
    }
  }
}
</style>
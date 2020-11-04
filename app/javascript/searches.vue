<template>
  <div>
    <ul class="search-list">
      <li class="search-item">
        <span>Youtuber</span>
      </li>
      <li class="search-item">
        <span>動画</span>
      </li>
      <li class="search-item">
        <span>アイテム</span>
      </li>
    </ul>

    <div>
      <ul class="youtuber-wrapper">
        <a v-for="(youtuber, index) in youtubers" :key="index" :href="`/youtubers/${youtuber.id}`">
          <li class="youtuber-info">
            <img :src="youtuber.image" class="channel-img">
            <span class="youtuber-name">{{youtuber.name}}</span>
          </li>
        </a>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from 'packs/axios'
export default {
  data: function () {
    return {
      youtubers: [],
    }
  },
  created () {
    var self = this;
    let url = `/api/v1/searches.json`;
    axios.get(url)
    .then(function(res) {
      self.youtubers = res.data.youtubers;
    })
    .catch(function(error) {
      console.log(error);
    });
  },
  methods: { 
  
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
</style>
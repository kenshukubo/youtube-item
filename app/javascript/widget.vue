<template>
  <div>
    <h2 class="header-sidebar">カテゴリー</h2>

    <ul class="category-list" v-for="(category, index) in categories" :key="index">
      <li class="first-category">
        <a :href="`/categories/${category.id}`">
          <p class="category-name">{{category.name}}(すべて)</p>
        </a>
      </li>
      <ul>
        <li v-for="(second_category, index) in category.second_categories" :key="index" @click="selectCategory(index)">
          <a class="second-category">
            <p class="category-name">{{second_category.name}}</p>
            <img :src="`/assets/images/pull-up.png`" v-if="isActive === index" class="arrow-img">
            <img :src="`/assets/images/pull-down.png`" v-else class="arrow-img">
          </a>
          <ul v-if="isActive === index" class="drop-menu">
            <li v-for="(third_category, index) in second_category.third_categories" :key="index">
              <a :href="`/categories/${third_category.id}`" class="third-category" >
                <p class="category-name">{{third_category.name}}</p>
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </ul>
  </div>
</template>
<script>
import axios from 'packs/axios'

export default {
  data: function () {
    return {
      categories: [],
      isActive: ""
    }
  },
  created () {
    var self = this;
    let url = `/api/v1/widget.json`;
    axios.get(url)
    .then(function(res) {
      self.categories = res.data.categories;
    })
    .catch(function(error) {
      console.log(error);
    });
  },
  methods: {
    selectCategory: function(i){
      if(this.isActive === i){
        this.isActive = null;
      }else{
        this.isActive = i;
      }
    },
  }
}
</script>
<style scoped lang="scss">
.header-sidebar{
  border-left: 3px solid #02bb80;
  color: #313131;
  font-size: 20px;
  font-weight: bold;
  padding-left: 16px;
  margin-bottom: 10px;
}
.category-list{
  font-size: 18px;
  @media(max-width: 910px){
    font-size: 16px
  }
  .category-name{
    -webkit-box-orient: vertical;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    overflow: hidden;
  }
  .first-category{
    padding: 8px 0;
    margin-bottom: 8px;
    font-weight: 600;
    cursor: pointer;
    &:hover{
      text-decoration: underline;
    }
  }
  .second-category{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 8px 0;
    cursor: pointer;
    &:hover{
      text-decoration: underline;
    }
    .arrow-img{
      width: 16px;
      height: 16px;
    }
  }
  .drop-menu{
    padding-left: 20px;
    .third-category{
      display: block;
      padding: 8px 0;
      cursor: pointer;
      &:hover{
        text-decoration: underline;
      }
    }
  }
}
</style>
<template>
  <div>
    <h2 class="header-sidebar">カテゴリー</h2>

    <ul class="category-list" v-for="(category, index) in categories" :key="index">
      <li class="first-category">
        <a :href="`/categories/${category.id}`">
          <p>{{category.name}}(すべて)</p>
        </a>
      </li>
      <ul>
        <li v-for="(second_category, index) in category.second_categories" :key="index" @click="selectCategory(index)">
          <a class="second-category">
            <img :src="`/assets/images/arrow.png`" class="arrow-img">
            <p>{{second_category.name}}</p>
          </a>
          <ul v-if="isActive === index" class="drop-menu">
            <li v-for="(third_category, index) in second_category.third_categories" :key="index">
              <a :href="`/categories/${third_category.id}`" class="third-category" >
                <p>{{third_category.name}}</p>
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
  .first-category{
    padding: 8px 0;
    margin-bottom: 8px;
    cursor: pointer;
    &:hover{
      text-decoration: underline;
    }
  }
  .second-category{
    display: flex;
    align-items: center;
    padding: 8px 0;
    cursor: pointer;
    &:hover{
      text-decoration: underline;
    }
    .arrow-img{
      width: 12px;
      height: 12px;
      margin-right: 10px;
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
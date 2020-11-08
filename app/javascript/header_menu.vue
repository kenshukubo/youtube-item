<template>
  <div>
    <div @click="openMenu">
      <img :src="menuBtn">
    </div>

    <div v-if="isMenuOpen" class="menu-wrapper">
      <nav class="menu">
        <div class="close-btn">
          <img :src="closeBtn" @click="closeMenu">
        </div>
        <div class="search-form-wrapper">
          <input class="search-form" v-model="text" type="text">
          <button class="search-btn" @click="search">検索</button>
        </div>
        <ul>
          <li v-for="(category, index) in categories" :key="index" class="category-wrapper">
            <a :href="`/categories/${category.id}`" class="category-item">
              <img :src="category.image">
              <p>{{category.name}}</p>
            </a>
          </li>
          <li v-for="(category, index) in children_categories" :key="index" class="category-wrapper">
            <a :href="`/categories/${category.id}`" class="category-item">
              <img :src="category.image">
              <p>{{category.name}}</p>
            </a>
          </li>
        </ul>
        <div class="bottom-close-area" @click="closeMenu">
          <p class="bottom-close-btn">閉じる</p>
        </div>
      </nav>
    </div>
  </div>
</template>

<script>
import axios from 'packs/axios'
import menuBtn from 'packs/components/header_menu/images/menu.png'
import closeBtn from 'packs/components/header_menu/images/close-btn.png'

export default {
  data: function () {
    return {
      menuBtn: menuBtn,
      closeBtn: closeBtn,
      isMenuOpen: false,
      categories: [],
      children_categories: [],
      text: "",
    }
  },
  created () {
    var self = this;
    let url = `/api/v1/header_menu.json`;
    axios.get(url)
    .then(function(res) {
      self.categories = res.data.categories;
      self.children_categories = res.data.children_categories;
    })
    .catch(function(error) {
      console.log(error);
    });
  },
  methods: {
    openMenu: function(){
      this.isMenuOpen = true;
    },
    closeMenu: function(){
      this.isMenuOpen = false;
    },
    search: function(){
      if(this.text !== null){
        location.href = `/searches?search=${this.text}`
      }
    }
  }
}
</script>

<style scoped lang="scss">
.menu-wrapper{
  position: fixed;
  top: 0;
  right: 0;
  width: 100vw;
  height: 100%;
  background: rgba(45,45,45, 0.5);
  z-index: 99;
  overflow: auto;
  .menu{
    width: 300px;
    height: 100%;
    background-color: #fff;
    margin-left: auto;
    overflow: scroll;
    z-index: 100;
    .close-btn{
      height: 70px;
      display: flex;
      justify-content: flex-end;
      align-items: center;
      padding-right: 30px;
      img{
        width: 32px;
        height: 32px;
      }
    }
    .search-form-wrapper{
      position: relative;
      padding: 15px;
      margin-bottom: 10px;
      .search-form{
        width: 100%;
        border-radius: 30px;
        border: 1px solid #e7e7e7;
        padding: 10px 16px;
        box-sizing: border-box;
      }
      .search-btn{
        border-radius: 28px;
        background-color: #333;
        color: #fff;
        font-size: 13px;
        font-weight: bold;
        height: 30px;
        padding: 0 10px;
        position: absolute;
        right: 20px;
        top: 18px;
      }
    }
    .category-wrapper{
      padding-left: 24px;
      margin-bottom: 10px;
      .category-item{
        display: flex;
        align-items: center;
        font-weight: 400;
        padding: 14px 0;
      }
    }
    .bottom-close-area{
      border: 1px solid #e7e7e7;
      text-align: center;
     .bottom-close-btn{
       padding: 20px 0;
     } 
    }
  }
}
</style>
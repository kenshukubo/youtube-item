<template>
  <div>
    <div @click="openMenu">
      <img :src="menuBtn">
    </div>

    <div v-if="isMenuOpen" class="menu-wrapper"><!--黒い背景-->
    </div>
    <transition name="right">
      <nav class="menu" v-if="isMenuOpen">
        <div class="close-btn">
          <img :src="closeBtn" @click="closeMenu">
        </div>
        <div class="search-form-wrapper">
          <input class="search-form" v-model="text" type="text" @keydown.enter="trigger" placeholder="チャンネル名・アイテム名">
          <button class="search-btn" @click="search">検索</button>
        </div>
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
                <img :src="pullUpBtn" v-if="isActive === index" class="arrow-img">
                <img :src="pullDownBtn" v-else class="arrow-img">
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
        
        <h3 class="post-category-title">動画ネタ</h3>
        <ul class="category-list">
          <li class="post-category" v-for="(category, index) in postCategories" :key="index">
            <a :href="`/categories/${category.id}`" class="category-info">
              <img :src="category.image">
              <p class="category-name">{{category.name}}</p>
            </a>
          </li>
        </ul>
        <div class="bottom-close-area" @click="closeMenu">
          <p class="bottom-close-btn">閉じる</p>
        </div>
      </nav>
    </transition>
  </div>
</template>

<script>
import axios from 'packs/axios'
import menuBtn from 'packs/components/header_menu/images/menu.png'
import closeBtn from 'packs/components/header_menu/images/close-btn.png'
import pullUpBtn from 'packs/components/header_menu/images/pull-up.png'
import pullDownBtn from 'packs/components/header_menu/images/pull-down.png'


export default {
  data: function () {
    return {
      menuBtn: menuBtn,
      closeBtn: closeBtn,
      pullUpBtn: pullUpBtn,
      pullDownBtn: pullDownBtn,
      isMenuOpen: false,
      categories: [],
      postCategories: [],
      text: "",
      isActive: "",
      setCanMessageSubmit: false
    }
  },
  created () {
    var self = this;
    let url = `/api/v1/header_menu.json`;
    axios.get(url)
    .then(function(res) {
      self.categories = res.data.categories;
      self.postCategories = res.data.post_categories;
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
    },
    trigger:  function(event) {
      // 日本語入力中のEnterキー操作は無効にする
      if (event.keyCode !== 13) return;
      if(this.text !== null){
        location.href = `/searches?search=${this.text}`
      }
    },
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
.menu-wrapper{
  position: fixed;
  top: 0;
  right: 0;
  width: 100vw;
  height: 100%;
  background: rgba(45,45,45, 0.5);
  z-index: 99;
  overflow: auto;
}
.menu{
  position: fixed;
  top: 0;
  right: 0;
  width: 300px;
  height: 100%;
  background-color: #fff;
  margin-left: auto;
  overflow: scroll;
  -webkit-overflow-scrolling: touch;
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
    padding: 0 15px 15px 15px;
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
      top: 3px;
    }
  }
  .category-list{
    font-size: 16px;
    .category-name{
      -webkit-box-orient: vertical;
      display: -webkit-box;
      -webkit-line-clamp: 1;
      overflow: hidden;
    }
    .first-category{
      padding: 12px 16px;
      margin-bottom: 8px;
      font-weight: 600;
    }
    .second-category{
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 12px 16px;
      border-bottom: 1px solid #e7e7e7;
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
      }
    }
    .post-category{
      .category-info{
        display: flex;
        align-items: center;
        padding: 12px 16px;
        border-bottom: 1px solid #e7e7e7;
        .category-name{
          margin-left: 5px;
        }
      }
    }
  }
  .post-category-title{
    font-size: 16px;
    padding: 12px 16px;
    margin-bottom: 8px;
    font-weight: 600;
  }
  .bottom-close-area{
    border: 1px solid #e7e7e7;
    text-align: center;
    .bottom-close-btn{
      padding: 20px 0;
    } 
  }
}
.right-enter-active, .right-leave-active {
  transform: translate(0px, 0px);
  transition: transform 225ms cubic-bezier(0, 0, 0.2, 1) 0ms;
}
.right-enter, .right-leave-to {
  transform: translateX(100vw) translateX(0px);
}
</style>
<template>
  <div>
    <h2 class="header-sidebar">カテゴリー</h2>
    <div class="category-list" v-for="(category, index) in categories" :key="index">
      <ul>
        <li>
          <a>
            <p>{{category.name}}</p>
          </a>
        </li>
        <ul v-for="(second_category, index) in category.second_categories" :key="index">
          <li>
            <a>
              <p>{{second_category.name}}</p>
            </a>
          </li>
          <ul v-for="(third_category, index) in second_category.third_categories" :key="index">
            <li>
              <a>
                <p>{{third_category.name}}</p>
              </a>
            </li>
          </ul>
        </ul>
      </ul>
    </div>
  </div>
</template>
<script>
import axios from 'packs/axios'

export default {
  data: function () {
    return {
      categories: []
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

}
</style>
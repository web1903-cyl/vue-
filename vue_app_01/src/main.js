import Vue from 'vue'
import App from './App.vue'
import router from './router'
//以上三行不要动保存原来的位置
//原因:引入有序
//第三方组件在下面引入
//1.完整引入mint-ui
import MintUI from 'mint-ui'
//2.单引引入mint-ui样式
import'mint-ui/lib/style.css'
//3.将mint-ui注册vue
Vue.use(MintUI);
//4.引入图标字体样式文件
import"./font/iconfont.css"
//5.引入axios.js文件
import axios from "./axios"
//6:引入vuex
import Vuex from "vuex"
//7：注册vuex组件
Vue.use(Vuex)
//8:创建store
var store=new Vuex.Store({
  //Vuex中全局共享的数据，
  state:{cartCount:0},
  //修改vuex中全局共享的数据
  mutations:{
    //购物车数量加1
    increment(state){
      state.cartCount++;
    },
    clear(state){
      state.cartCount=0;
    },
    //购物车数量增加指定值 5
    updateCount(state,c){
      state.cartCount+=c;
    }
  },
  //获取vuex中全局共享的数据
  getters:{
    getCartCount:function(state){
      return state.cartCount;
    }
  }
})
//9:将store保存vue实例中
Vue.config.productionTip = false
new Vue({
  router,
  render: h => h(App),
  store
}).$mount('#app')

//router.js 引入路由
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
import HelloContainer from "./components/HelloWorld.vue"

import Login from './components/project/Login.vue'
import Home1 from './components/project/Home1.vue'
import Product from './components/project/Product.vue'
import Cart from './components/project/Cart.vue'
import Home from './components/project/Home.vue'
import index from './components/project/index.vue'
import Detail from './components/project/Detail.vue'
import Carousel from './components/project/Carousel.vue'
import Container from './components/project/Container.vue'
import Container2 from './components/project/Container2.vue'
import Userpage from './components/project/Userpage.vue'
Vue.use(Router)
//2：为Exam01.vue配置路径
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},

    {path:'/Login',component:Login},
    {path:'/Home1',component:Home1},
    {path:'/Product',component:Product},
    {path:'/Cart',component:Cart},
    {path:'/Home',component:Home},
    {path:'/index',component:index},
    {path:'/Detail',component:Detail},
    {path:'/Carousel',component:Carousel},
    {path:'/Container',component:Container},
    {path:'/Container2',component:Container2},
    {path:'/Userpage',component:Userpage},
  ]
})

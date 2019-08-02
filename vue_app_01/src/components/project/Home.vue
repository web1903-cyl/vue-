<template>
    <div class="food_container">
        <div class="page-wrap">
            <!--顶部标题栏子组件-->
            <titlebar></titlebar>
            <mt-tab-container v-model="active">
                <mt-tab-container-item id="tab1">
                    <index></index>
                </mt-tab-container-item>
                <mt-tab-container-item id="tab2">
                    <product></product>
                </mt-tab-container-item>
                <mt-tab-container-item id="tab3">
                    <cart></cart>
                </mt-tab-container-item>
                <mt-tab-container-item id="tab4">
                    <userpage></userpage>
                </mt-tab-container-item>
            </mt-tab-container>
            <!--底部导航条-->
            <mt-tabbar v-model="active" fixed>
                <mt-tab-item id="tab1" @click.native="changeState(0)">
                    <tabbaricon :Image="require('../../assets/01.png')" :fouced="currentIndex[0].isSelect"></tabbaricon>
                    首页
                </mt-tab-item>
                <mt-tab-item id="tab2" @click.native="changeState(1)">
                    <tabbaricon :Image="require('../../assets/02.png')" :fouced="currentIndex[1].isSelect"></tabbaricon>
                    商品
                </mt-tab-item>
                <mt-tab-item id="tab3" @click.native="changeState(2)">
                    <tabbaricon :Image="require('../../assets/03.png')" :fouced="currentIndex[2].isSelect"></tabbaricon>
                    订单
                </mt-tab-item>
                <mt-tab-item id="tab4" @click.native="changeState(3)">
                    <tabbaricon :Image="require('../../assets/04.png')" :fouced="currentIndex[3].isSelect"></tabbaricon>
                    我的
                </mt-tab-item>
            </mt-tabbar>
        </div>
    </div>
</template>
<script>
    import TabBarIcon from "./TabBarIcon.vue"
    import Hom1 from "./Home1.vue"
    import index from "./index.vue"
    import Product from "./Product.vue"
    import Cart from "./Cart.vue"
    import Userpage from "./Userpage.vue"
    export default{
        data(){
            return {
                active:"tab1",
                currentIndex:[
                    {isSelect:true},
                    {isSelect:false},
                    {isSelect:false},
                    {isSelect:false}
                ]
            }
        },
        components:{
            "titlebar":Hom1,
            "index":index,
            "tabbaricon":TabBarIcon,
            "product":Product,
            "cart":Cart,
            "Userpage":Userpage,
            
            
        },
        methods:{
            changeState(n){

            }
        }
    }
</script>
<style>
    body{
        margin:0 !important;
    }
    *{
      padding: 0;
      margin: 0;
    }
    .food_container{
        overflow:hidden;/*溢出隐藏 */
    }
    .page-wrap{
        overflow:auto;/*溢出显示滚动条 */
        /*底部导航功能 */
        padding-bottom:8px;
    }
     /*修改tabbar默认文字颜色 */
    .mint-tabbar>.mint-tab-item{
        color:#999999;
    }
    /*修改tabbar选中文字颜色 */
    .mint-tabbar>.mint-tab-item.is-selected{
        background-color:transparent;
        color:#45c018;
    }
</style>
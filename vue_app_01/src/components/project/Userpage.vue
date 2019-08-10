<template>
    <div class="userpage">
        <div class="left">
            <img src="../../assets/user/left.png">
        </div>
        <div class="right">
            <img src="../../assets/r2.png">
        </div>
        <div class="title">
        <table></table>
            <img src="../../assets/user/my-photo1.jpg" @click="ret">
            <p @click="ret">账号登录</p>
            <p>超级会员    积分:5190  </p>
        </div>
        <div class="sub">
            <a href="javascript:;" v-for="(item,i) in data" :key="i">
                <img :src="item.imgurl">
                <p>{{item.title}}</p>
            </a>
        </div>
        <div class="list">
            <a href="javascript:;" v-for="(item,i) in list" :key="i">
                <img :src="item.img">
                <div class="tit">{{item.sub}}</div>
                <div class="r2">></div>
            </a>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                data:[
                    {imgurl:require("../../assets/icon-home/me-1.png"),title:"待付款"},
                    {imgurl:require("../../assets/icon-home/me-2.png"),title:"待收货"},
                    {imgurl:require("../../assets/icon-home/me-3.png"),title:"全部订单"}
                ],
                list:[
                    {img:require("../../assets/icon-home/me-4.png"),sub:"我的钱包"},
                    {img:require("../../assets/icon-home/me-13.png"),sub:"我的收藏"},
                    {img:require("../../assets/icon-home/me-6.png"),sub:"地址管理"},
                    {img:require("../../assets/icon-home/me-5.png"),sub:"我的足迹"},
                    {img:require("../../assets/icon-home/me-7.png"),sub:"我的银行"},
                    {img:require("../../assets/icon-home/me-9.png"),sub:"我的评价"}
                ]
            }
        },
        methods:{
            ret(){
                this.$router.push("/Login");
            }
        }
    }
</script>
<style>
    .left{
        position: absolute;
        top: 5px;
        left: 5px;
        width:30px;
        height:30px;
        z-index:1;
    }
    .left img{
        width:100%;
        height:100%;
    }
    .right{
        position: absolute;
        top: 5px;
        right: 5px;
        width:30px;
        height:30px;
        z-index:1;
    }
    .right img{
        width:100%;
        height:100%;
    }
    .title{
        width:100%;
        height:160px;
        background-color:#ff5200;
        position:relative;
    }
    .title img{
        position: absolute;
        top: 50%;
        left: 48%;
        width: 80px;
        height: 80px;
        margin: -70px 0 0 -40px;
        border-radius: 50%;
        border: solid 2px rgba(255, 255, 255, 0.7);
    }
    .title>p:nth-child(3){
        margin-top:100px;
    }
    .title>p:nth-child(4){
        margin-top:10px;
    }
    .title>p{
        text-align:center;
        color:#fff;
    }
    .sub{
        width:100%;
        height:80px;
        border-bottom:1px solid #ddd;
    }
    .sub>a{
        display:inline-block;
        width:50px;
        height:50px;
        text-decoration:none;
        margin-left:60px;
        margin-top:10px;
    }
    .sub>a>img{
        width:35px;
        height:35px;
    }
    .sub>a>p{
        font-size:10px;
        color:#646464;
    }
    .list{
        width:100%;
        margin-top:10px;
        border-top:1px solid #ccc;
    }
    .list>a{
        display:block;
        width:100%;
        height:58px;
        text-decoration:none;
        line-height:58px;
        clear:both;
    }
    .list>a>img{
        width:30px;
        height:30px;
        float:left;
        margin-top:18px;
    }
    .list>a>.tit{
        float:left;
        font-size: 14px;
        color: #666;
        margin-top:5px;
    }
    .list>a>.r2{
        float:right;
        font-size: 14px;
        color: #666;
        margin-top:5px;
        margin-right:7px;
    }
    .list>a:nth-child(4){
        border-bottom:1px solid #ccc;
    }
    .list>a:nth-child(5){
        margin-top:10px;
        border-top:1px solid #ccc;
    }
</style>
<template>
    <div class="container2">
        <div class="titles">
            <img src="../../assets/ti.png">
            <span>APP新版本上线换一种方式购物</span>
        </div>
        <div class="title2">
            <img src="../../assets/title1.jpg" alt="">
        </div>
        <div class="title3">
            <h2>大牌热卖</h2>
        </div>
        <div class="title4">
            <div class="list">
                <span>
                    <a href="javaacript:;">
                        <img src="../../assets/container2/b1.jpg" alt="">
                        <span>新款上市</span>
                    </a>
                </span>
            </div>
            <div class="list">
                <span>
                    <a href="javaacript:;">
                        <img src="../../assets/container2/b2.jpg" alt="">
                        <span>爱美装扮</span>
                    </a>
                </span>
            </div>
            <div class="list">
                <span>
                    <a href="javaacript:;">
                        <img src="../../assets/container2/b3.jpg" alt="">
                        <span>热潮时代</span>
                    </a>
                </span>
            </div>
        </div>
        <div class="title3">
            <h2>新品必购</h2>
        </div>
        <div class="title5">
            <span>
                <img src="../../assets/container2/xiao1.jpg">
            </span>
            <span>
                <img src="../../assets/container2/xiao2.jpg">
            </span>
            <span>
                <img src="../../assets/container2/xiao3.jpg">
            </span>
            <span>
                <img src="../../assets/container2/xiao34.jpg">
            </span>
        </div>
        <div class="title3">
            <h2>新品上架</h2>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {}
        }
    }
</script>
<style scoped>
    *{
        padding:0;
        margin:0;
    }
    .container2{
        clear:both;
        padding-top:22px;
        width:100%;
    }
    .titles{
        width:100%;
        height:48px;
        margin-top:10px;
        border-bottom:1px solid gray;
        border-top:1px solid gray; 
    }
    .titles>img{
        width:28px;
        height:28px;
        margin-top:10px;
        margin-left:50px;;
    }
    .titles>span{
        vertical-align:middle;
        font-size: 14px;
        color: #646464;
        padding-left: 5px;
    }
    .title2{
        width:100%;
        height:211px;
    }
    .title2>img{
        width:100%;
        height:100%;
    }
    .title3{
        padding: 15px 5px;
        width: 100%;
        text-align: center;
        clear:both;
    }
    .title3>h2{
        color: #ff5000;
        font-size: 16px;
        font-weight: normal;
    }
    .title4{
        width:100%;
    }
    .title4>.list{
        width:33%;
        height:240px;
        float:left;
        margin-right:1px;
    }
    .title4>.list>span,.title4>.list>span>a{
        display:block;
        text-decoration:none;
    }
    .title4>.list>span>a>img{
        width:100%;
        height:200px;
    }
    .title4>.list>span>a>span{
        display:block;
        width:100%;
        height:35px;
        margin-top:1px;
        background-color:#ccc;
        font-size:16px;
        color:#9e9e9e;
        line-height:35px;
        text-align:center;
    }
    .title5{
        width:100%;
    }
    .title5>span{
        display:block;
        width:25%;
        height:93px;
        float:left;
        margin:auto;
    }
    .title5>span>img{
        width:100%;
        height:100%;
    }
</style>
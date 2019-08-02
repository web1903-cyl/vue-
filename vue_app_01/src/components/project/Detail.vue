<template>
    <div class="detail">
        <div class="return">
            <img src="../../assets/l1.png">
        </div>
        <div class="product">
            <mt-swipe style="height:428px;" :auto="4000">
                <mt-swipe-item>
                    <img src="../../assets/banner/banner1.jpg" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../../assets//banner/banner2.jpg" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../../assets//banner/banner3.jpg" alt="">
                </mt-swipe-item>
                <mt-swipe-item>
                    <img src="../../assets//banner/banner4.jpg" alt="">
                </mt-swipe-item>
            </mt-swipe>
            <div class="title1">
                <p>2017新款春宽松毛边长袖牛仔短外套MM6646</p>
                <span>￥399.00</span>
                <span>¥20.00</span>
                <p>已经领取: 200 剩余: 1800</p>
            </div>
            <mt-button size="large" type="primary" style="margin-top:20px;">购买</mt-button>
        </div>
        <div class="list">
            <div>商品详情</div>
            <div>商品评论</div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return{}
        }
    }
</script>
<style scoped>
    .product img{
        width:100%;
        height:428px;
    }
    .title1{
        width:100%;
        height:112px;
        border-bottom:1px solid #ccc;
    }
    .title1>p:nth-child(1){
       font-size:18px;
       font-weight:bold;
    }
    .title1>span:nth-child(2){
        color:#c00;
        font-size:20px;
        
    }
    .title1>span:nth-child(3){
        padding: 2px 12px;
        font-size: 0.18rem;
        color: #fff;
        text-align: left;
        border-radius: 5px;
        background-color:#ff5200;
        margin-left:6px;
    }
    .title1>p:nth-child(4){
        font-size:13px;
        color:gray;
    }
    .list{
        width:100%;
        height:47px;
        margin-top:10px;
    }
    .list>div:nth-child(1),.list>div:nth-child(2){
        width:49%;
        font-size:18px;
        line-height:47px;
        text-align:center;
        float:left;
        border:1px solid #ccc;
    }
    .list>div:nth-child(1):hover,.list>div:nth-child(2):hover{
        color:red;
    }
    .list>div:nth-child(3),
    .list>div:nth-child(4),
    .list>div:nth-child(5){
        clear:both;
        height:415px;
        background-image:url('../../assets//banner/banner4.jpg');
        background-size:100% 100%;
        margin-bottom:5px;
    }
    .return{
        width:40px;
        height:40px;
        position:absolute;
        top:0px;left:0px;
        z-index:1;
    }
    .return img{
        width:100%;
        height:100%;
    }
</style>
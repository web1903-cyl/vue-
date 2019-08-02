<template>
    <div class="container">
        <div class="sub">
            <img src="../../assets/sub/icon-tuan.png">
            <p>红包</p>
        </div>
        <div class="sub">
            <img src="../../assets/sub/icon-tuan1.png">
            <p>签到</p>
        </div>
        <div class="sub">
            <img src="../../assets/sub/icon-tuan2.png">
            <p>新品</p>
        </div>
        <div class="sub">
            <img src="../../assets/sub/icon-tuan3.png">
            <p>团购</p>
        </div>
        <div class="sub">
            <img src="../../assets/sub/icon-tuan4.png">
            <p>分类</p>
        </div>
        <div class="sub">
            <img src="../../assets/sub/icon-tuan5.png">
            <p>生活</p>
        </div>
        <div class="sub">
            <img src="../../assets/sub/icon-tuan6.png">
            <p>秀秀</p>
        </div>
        <div class="sub">
            <img src="../../assets/sub/icon-tuan7.png">
            <p>达人</p>
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
    .container{
        width:100%;
        background-color:gray;
    }
    .sub{
        width:40px;
        height:40px;
        float:left;
        margin-left:40px;
        margin-top:35px;
    }
    .sub>img{
        width:100%;
        height:100%;
    }
    .sub>p{
        text-align: center;
        color: #686868;
        font-size: 12px;
        margin-top:0px;
    }
</style>
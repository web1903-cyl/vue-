<template>
    <div id="index">
        <div class="carousel">
            <carousel></carousel>
        </div>
        <container></container>
        <container2></container2>
        <product></product>
    </div>
</template>
<script>
    import Carousel from "./Carousel.vue"
    import Container from "./Container.vue"
    import Container2 from "./Container2.vue"
    import Product from "./Product.vue"
    export default{
        data(){
            return {

            }
        },
        components:{
            "carousel":Carousel,
            "container":Container,
            "container2":Container2,
            "product":Product,
        }
    }
</script>
<style scoped>
    *{
        padding:0;
        margin:0;
    }
    .app-container{
        height:160px;
    }
    #index>.carousel>img{
        width:100%;
    }
    #index>.title{
        width:362px;
        height:140px;
        text-align:center;
    }
    .t1,.t2,.t3,.t4{
        width:49%;
        height:50%;
        float:left;
        margin-left:1px;
        margin-right:1px;
        margin-top:3px;
        
    }
    .title a{
        width:100%;
        height:100%;
        opacity:0.3;
        display:none
    }
    .t1{
        background-image:url('../../assets/pic/F4/f1.jpg');
        background-size:100%;
    }
    .t2{
        background-image:url('../../assets/pic/F4/f2.jpg');
        background-size:100%;
    }
    .t3{
        background-image:url('../../assets/pic/F4/f3.jpg');
        background-size:100%;
    }
    .t4{
        background-image:url('../../assets/pic/F4/f4.jpg');
        background-size:100%;
    }
    .t1:hover a{
        background-color:red;
        display:block;
    }
    
    .t2:hover a{
        background-color:blue;
        display:block;
    }
    .t3:hover a{
        background-color:orange;
        display:block;
    }
    .t4:hover a{
        background-color:green;
        display:block;
    }

</style>
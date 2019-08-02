<template>
    <mt-swipe style="height:160px;" :auto="4000" @change="handleChange">
        <mt-swipe-item>
            <img src="../../assets/carousel/banner1.jpg" alt="">
        </mt-swipe-item>
         <mt-swipe-item>
            <img src="../../assets/carousel/banner2.jpg" alt="">
        </mt-swipe-item>
         <mt-swipe-item>
            <img src="../../assets/carousel/banner3.jpg" alt="">
        </mt-swipe-item>
         <mt-swipe-item>
            <img src="../../assets/carousel/banner4.jpg" alt="">
        </mt-swipe-item>
        
    </mt-swipe>
</template>
<script scoped>
    export default{
        data(){
            return {}
        },
        methods: {
            handleChange(index) {
                
            }
        }
    }
</script>
<style scoped>
    img{
        width:100%;
        height:100%;
    }
</style>
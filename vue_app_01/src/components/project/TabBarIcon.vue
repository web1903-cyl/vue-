<template>
    <div>
        <img :src="Image" class="imagestyle">
    </div>
</template>
<script>
    export default{
        props:{
            Image:{default:""},
        },
        data(){
            return {}
        }
    }
</script>s
<style>
     .imagestyle{
        width:30px;
        height:30px;
    }
</style>
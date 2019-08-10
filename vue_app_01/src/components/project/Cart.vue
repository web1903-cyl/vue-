<template>
    <div class="cart">
        <!--全选-->
        <div class="selectAll">
            全选
            <input type="checkbox" @change="selectAll">
        </div>
        <!--商品列表-->
        <div class="cart-item" v-for="(item,i) of list" :key="i">
            <div class="leftImgText">
                <input type="checkbox" v-model="item.cb">
                <img :src="'http://127.0.0.1:3000/img/'+item.img_url">
                <h2>{{item.title}}</h2>
                <p class="size">颜色分类:黑色,尺码:M</p>
                <p class="price">￥{{item.price}}</p>
                <mt-button :data-id="item.id" @click="delItem" class="c1" style="float:right; margin-right:10px;margin-top:30px;">删除</mt-button>
            </div>
            
        </div>
        <!--删除选中商品-->
        <div class="cart-item2">
            <mt-button @click="delAll" type="danger">删除选中的商品</mt-button>
            <h3>
                购物车数量:<span style="color:red">{{$store.getters.getCartCount}}</span>
            </h3>  
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return {
                list:""
            }
        },
        created(){
            this.loadMore();
        },
        methods:{
            delAll(){
                var str="";
                for(var item of this.list){
                    if(item.cb){
                        str += item.id+","
                    }
                }
               str=str.substring(0,str.length-1);
               console.log(str);
                
                if(str.length==0){
                    this.$toast("请选择商品");
                    return;
                }

                var url="delAll";
                var obj={ids:str};
                this.axios.get(url,{params:obj}).then(result=>{
                    this.loadMore();
                });
            },
            delItem(e){
                var id=e.target.dataset.id;
                //console.log(id);
                this.$messagebox.confirm("是否删除指定的数据").then(action=>{
                   var url="delItem";
                   var obj={id:id};
                   this.axios.get(url,{params:obj}).then(result=>{
                       this.loadMore();
                   })
                }).catch(err=>{
                    return;
                })
            },
            selectAll(e){
                //全选按钮状态
                var cb=e.target.checked;
                //依据状态修改列表cb
                for(var item of this.list){
                    item.cb=cb;
                }
                
            },
            loadMore(){
                var url="cart";
                this.axios.get(url).then(result=>{
                    console.log(result);
                    //this.list=result.data.data;
                    var rows=result.data.data;
                    for(var item of rows){
                        item.cb=false;
                        this.$store.commit("increment")
                    }
                    this.list=rows;
                })
            }
        }
    }
</script>
<style scoped>
    input[type="checkbox"]{
    width: 20px;
    height: 20px;
    border: 1px solid #000;
    }
    .cart-item{
        margin-top:10px
    }
    .leftImgText{
        width:100%;
        height:124px;
        background-color:#ddd;
        border-radius:10%;
        margin-bottom:10px;
    }
    .leftImgText input{
      float:left;
      margin-left:10px;
      margin-top:50px;
    }
    .leftImgText img{
        width:100px;
        height:100px;
        margin-top:15px;
        margin-left:10px;
        float:left;
    }
    .leftImgText h2{
        font-weight: normal;
        font-size: 14px;
        color: #666;
        float:left;
        margin-top:15px;
        margin-left:5px;
    }
    .leftImgText .size{
        float:left;
        color: #999;
        font-size: 12px;
        margin-top:4px;
        margin-left:10px;
    }
    .leftImgText .price{
        float:left;
        color: #ff8746;
        margin-top:33px;
        margin-left:-118px;
    }
    .cart-item2 h3{
        float:right;
    }
</style>

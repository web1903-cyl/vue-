<template>
  <div class="header">
  <table></table>
    <div class="l2"></div>
    <a class="r2" href="javascript:;">
      <img src="../../assets/r2.png" >
    </a>
    <div class="search">
      <input type="text" placeholder="秋季新品" >
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
  .header{
    width:100%;
    height:50px;
    background-color:#ff5a5f;
  }
  .l2{
    background-image: url('../../assets/l2.png');
    background-size: 25px;
    width: 25px;
    height: 25px;
    float:left;
    display: block;
    background-repeat: no-repeat;
    border: none;
    position: relative;
    left: 5px;
    top:10px;
  }
  .r2{
    width: 25px;
    height: 25px;
    float:right;
    display: block;
    float:right;
    margin-top:10px;
    margin-right:10px;
  }
  .r2>img{
    width: 100%;;
    height: 100%;
  }
  .search{
    width:75%;
    height: 50px;
    padding: 0 35px;
    margin-top:6px;
  }
  .search>input{
    background: rgba(255, 255, 255, 0.7);
    height: 32px;
    width: 100%;
    padding-left: 4px;
    border-radius: 2px;
    font-size: 12px;
    color: #666;
  }
</style>
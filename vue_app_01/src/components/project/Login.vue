<template>
    <div class="login">
        <div class="header">
            <a href="javascript:;"></a>
            <a href="javascript:;"></a>
        </div>
        <div class="aui-account-title">
			<h1>账号登录</h1>
		</div>
        <div class="login_container">
            <mt-field label="用户名" :placeholder="unameHolder" v-model="uname" class="myinput"></mt-field>
            <mt-field label="密码" :placeholder="upwdHolder" type="password" v-model="upwd" class="myinput" ></mt-field>
            <mt-button type="primary" size="large" @click="login" class="b1">提交</mt-button>
        </div>
        <div class="aui-account-link">
			<a href="javascript:;">注册账号</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="javascript:;">忘记密码</a>
		</div>
        <div class="aui-account-footer">
			<div class="aui-account-footer-title">
				<h2>其它登录方式</h2>
			</div>
			<div class="aui-palace">
				<a href="javascript:;" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../assets/wx.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>微信</h2>
					</div>
				</a>
				<a href="javascript:;" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../assets/wb.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>微博</h2>
					</div>
				</a>
				<a href="javascript:;" class="aui-palace-grid">
					<div class="aui-palace-grid-icon">
						<img src="../../assets/qq.png" alt="">
					</div>
					<div class="aui-palace-grid-text">
						<h2>QQ</h2>
					</div>
				</a>
			</div>
		</div>

    </div>
    
</template>
<script>
    export default{
        data(){
            return {
                uname:"tom",
                upwd:"123",
                unameHolder:"请输入用户名",
                upwdHolder:"请输入密码"
            }
        },
        methods:{
            login(){
                var u=this.uname;
                var p=this.upwd;
                var reg=/^[a-z0-9_]{3,12}$/i;
                if(!reg.test(u)){
                    this.$toast("用户名格式不正确");
                    return;
                }
                if(!reg.test(p)){
                    this.$toast("密码格式不正确");
                    return;
                }

                var url="login";
                var obj={uname:u,upwd:p};
                this.axios.get(url,{params:obj}).then(result=>{
                    console.log(result.data.code);
                    if(result.data.code>0){
                        this.$router.push("/Home");
                    }else{
                        this.$messagebox("提示","用户名或密码有误");
                    }
                });
            }
        }
    }
</script>
<style scoped>
    *{
        margin:0;
        padding:0;
    }
    .login{
       width:100%;
       height:670px;
       background-image:url('../../assets/bg.png');
       background-size:100% 100%;;
    }
    .header{
        width:100%;
        height:44px;
        position: relative;
        display: flex;
        z-index: 1002;
        background: none;
    }
    .header>a:nth-child(1){
        width: 35px;
        height: 35px;
        display: block;
        float: left;
        background-size: 35px;
        background-repeat: no-repeat;
        background-image:url('../../assets/l1.png');
        margin-left:10px;
        margin-top:10px;
    }
    .header>a:nth-child(2){
        clear:both;
        width: 30px;
        height: 30px;
        display: block;
        float:right;
        background-size: 30px;
        background-repeat: no-repeat;
        background-image:url('../../assets/r1.png');
        margin-left:270px;
        margin-top:10px;
    }
    .myinput{
        margin-top:5px;
    }
    .b1{
        margin-top:15px;
        opacity:0.75;
    }
    .aui-account-title {
        padding: 6rem 0 2rem 5rem;
    }
    .aui-account-title h1 {
        color: #ffffff;
        font-size: 1.4rem;
    }
    .login_container{
        width:288px;
        margin: 0 auto;
    }
    .aui-account-link {
        padding-top: 0.5rem;
        text-align: center;
    }
    .aui-account-link a {
        color: #fff;
        font-size: 0.85rem;
        text-decoration: none;
    }
    .aui-account-footer {
        position: absolute;
        left: 50%;
        width: 100%;
        margin-left: -50%;
        bottom: 0;
    }
    .aui-account-footer-title h2 {
        text-align: center;
        color: #fff;
        font-weight: normal;
        font-size: 0.85rem;
        position: relative;
    }
    .aui-account-footer-title h2:after {
        content: '';
        position: absolute;
        z-index: 0;
        top: 10px;
        left: -25%;
        width: 60%;
        background: #fff;
        height: 1px;
    }
    .aui-account-footer-title h2:before {
        content: '';
        position: absolute;
        z-index: 0;
        top: 10px;
        right: 6%;
        width: 30%;
        background: #fff;
        height: 1px;
    }
    .aui-account-footer .aui-palace {
        width: 60%;
        margin: 0 auto;
        padding: 1.5rem 0 2rem 0;
        position: relative;
        overflow: hidden;
    }
    .aui-account-footer .aui-palace-grid {
        width: 33.333%;
        position: relative;
        float: left;
        padding: 1px;
        box-sizing: border-box;
        margin: 10px 0;
    }
    .aui-account-footer .aui-palace-grid-icon {
        width: 23px;
        height: 23px;
        margin: 0 auto;
    }
    .aui-palace-grid-icon img {
        display: block;
        width: 100%;
        height: 100%;
        border: none;
    }
    .aui-palace-grid-text {
        display: block;
        text-align: center;
        color: #333;
        font-size: 0.85rem;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
        padding-top: 0.2rem;
    }
    .aui-account-footer .aui-palace-grid-text h2 {
        color: #fff;
        font-size: 0.8rem;
        font-weight: normal;
    }
</style>
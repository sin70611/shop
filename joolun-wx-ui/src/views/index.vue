<template>
  <div class="app-container home">
    <el-row :gutter="20" style="text-align: center;margin: auto;">
      <el-col :sm="24" :lg="6">
        <el-card class="update-log">
          <div class="clearfix">
            <span class="clearfix-title">JooLun微信管理框架-开源版</span>
            <p class="clearfix-text">此公众号对接了该平台，和该后台数据同步</p>
          </div>
          <img class="left-image" src="https://joolun-plus-1313274050.cos.ap-nanjing.myqcloud.com/joolun-plus-uniapp-pc/Joolun_Plus_1.png" alt="donate" />
          <img class="code" src="https://images.gitee.com/uploads/images/2020/0305/171054_0a84eb49_5079715.jpeg" alt="donate" />
          <p><el-button @click="goTarget('https://gitee.com/joolun/JooLun-wx')">访问码云</el-button>
            <el-button @click="goTarget('https://www.joolun.com/')">访问官网</el-button></p>
        </el-card>
      </el-col>
      <el-col :sm="24" :lg="18">
        <el-card class="update-log">
          <div class="clearfix">
            <span class="clearfix-title">JooLun uniapp 多店版</span>
            <p class="clearfix-text">微服务Sping Cloud + uniapp 强强联合打造的B2B2C多商户（多店铺）商城系统,</br>
              一套代码多端复用，小程序、H5、APP、PC端,轻松实现多终端覆盖！</br>无论是移动端商城还是pc端商城，商城首页、店铺
              首页均可拖拽式自定义装修！</br>拥有商户APP，IM客服系统，砍价、拼团、秒杀、分销、优惠券、直播等丰富营销组件</p>
          </div>
          <img class="right-image" src="https://joolun-plus-1313274050.cos.ap-nanjing.myqcloud.com/joolun-plus-uniapp-pc/Joolun_Plus_2.png" alt="donate" />
          <img class="code" src="https://joolun-blog.oss-cn-zhangjiakou.aliyuncs.com/qrcode/qrcode_for_gh_ae23ad0d32af_258.jpg" alt="donate" />
          <p><el-button @click="goTarget('https://demo1.joolun.com/')">后台演示</el-button>
            <el-button @click="goTarget('https://www.joolun.com/uniappddb.html')">获取源码</el-button></p>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
  export default {
    name: "index",
    data() {
      return {
        // 版本号
        version: "3.3.0",
      };
    },
    created() {
      this.$notify({
        title: '云服务器抢购',
        dangerouslyUseHTMLString: true,
        duration: 0,
        position: 'bottom-right',
        message: '<el-row :gutter="20">' +
          '<el-col :sm="24" :lg="24">' +
          '<a href="https://www.aliyun.com/minisite/goods?userCode=wnw8gle1" target="_blank">' +
          '<img style="width: 280px" src="https://images.gitee.com/uploads/images/2021/0622/110750_59b42ced_5079715.jpeg">' +
          '</a>' +
          '<p><a style="color: red" href="https://www.aliyun.com/minisite/goods?userCode=wnw8gle1" type="danger" target="_blank">阿里云领取￥2000红包，服务器低至￥91.80/年</a></p>' +
          '</el-col>' +
          '</el-row>'
      })
    },
    methods: {
      goTarget(href) {
        window.open(href, "_blank");
      },
    },
  };
</script>

<style scoped lang="scss">
  .el-card.is-always-shadow {
    box-shadow: none !important;
  }

  .el-card {
    border-radius: 0px;
  }

  .clearfix-title{
    font-size: 20px;
    font-weight: 800;
  }

  .clearfix-text{
    font-size: 14px;
    color: gray;
  }

  .left-image{
    width: 320px;
    height: 310px;
    margin-top: 100px;
    margin-bottom: 120px;
  }

  .code{
    width: 156px;
    height: 156px;
    margin-bottom: 40px;
    display: flex;
    margin: auto;
  }

  .right-image{
    width: 1000px;
    height: 420px;
    margin-top: 20px;
    margin-bottom: 20px;
  }

  .app-container {
    padding: 0;
  }

  .home {
    blockquote {
      margin: 0 0 20px;
      font-size: 17.5px;
      border-left: 5px solid #eee;
    }

    hr {
      margin-top: 20px;
      margin-bottom: 20px;
      border: 0;
      border-top: 1px solid #eee;
    }

    .col-item {
      margin-bottom: 20px;
    }

    ul {
      padding: 0;
      margin: 0;
    }

    font-family: "open sans",
    "Helvetica Neue",
    Helvetica,
    Arial,
    sans-serif;
    font-size: 13px;
    color: #676a6c;
    overflow-x: hidden;

    ul {
      list-style-type: none;
    }

    h4 {
      margin-top: 0px;
    }

    h2 {
      margin-top: 10px;
      font-size: 26px;
      font-weight: 100;
    }

    p {
      margin-top: 10px;

      b {
        font-weight: 700;
      }
    }

    .update-log {
      height: 88vh;
      margin-top: 20px;
      ol {
        display: block;
        list-style-type: decimal;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0;
        margin-inline-end: 0;
        padding-inline-start: 40px;
      }
    }
  }
</style>

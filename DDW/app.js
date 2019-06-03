//引入express
const express=require("express");
//引入路由器
const proRouter=require("./router/pro.js");
//引入body
const body=require("body-parser");
//创建web服务器
var server=express();
//设置端口
server.listen(8080);
//托管到静态文件夹public下
server.use(express.static("public"))
//引入body插件将post数据转换为字符串
 server.use(body.urlencoded({extended:false}));
//挂载路由器 pro/pro.router;
server.use("/pro",proRouter);
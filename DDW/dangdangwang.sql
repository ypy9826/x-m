#设置客户端链接编码 utf8
set names utf8;
#丢弃数据库 创建数据库
drop database if exists ddw;
#创建数据库
create database ddw charset=utf8;
#进入数据库
use ddw;
#创建保存用户列表
#用户信息列表
create table ddw_user(
    uid int primary key auto_increment,		 #用户id
    uname varchar(32),				 #用户电话
    upwd  varchar(32),				 #用户密码
    email varchar(64),				 #用户邮箱
    phone varchar(16),				 #用户电话
    user_name varchar(32),			 #用户昵称
    gender int				         #性别 女0 男1
);
#插入数据
insert into ddw_user value(1,"zhangqiang","123456","123@163.com","12345678901","张强","1");
insert into ddw_user value(2,"123456","123456","123@163.com","12345678901","张强","1");
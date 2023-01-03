-- 创建user表
-- create table if not exists user(
--     id varchar(36) not null comment '主键ID',
--     username varchar(32) not null comment '用户名称',
--     password varchar(32) comment '密码',
--     email varchar(100) comment '邮箱',
--     phone varchar(11) comment '手机号',
--     state tinyint(1) default 1 comment '状态 0：禁用；1：启用；默认：1；',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     createtime datetime comment '创建时间',
--     updatetime datetime comment '更新时间',
--     primary key(id)
-- )

-- 添加一条数据到user表
-- insert into user values("cbd6b945-ce98-d813-2863-97f67d2b5b6d","JavaCat技术团队","0BEC488C5DDECECE48C38106005FE2E0","3225043@qq.com","17861857725",1,0,"2022-12-30 09:02:00","2022-12-30 09:02:00");

-- 添加两个字段到user表
-- alter table user add work varchar(32) null comment '工作';
-- alter table user add introduce varchar(100) null comment '介绍';
-- alter table user add avatar varchar(250) null comment '头像';
-- alter table user add sex tinyint(1) null comment '性别：0：男；1：女；默认：null';
-- alter table user add birthday date null comment '生日';
-- alter table user add company varchar(32) null comment '公司';

-- 删除数据表字段
-- alter table user drop createuser

-- 查询user表所有数据
-- select * from user;
-- select id,username,email from user;

-- 查看表创建语句
-- show create table user;

-- 文章表
-- create table if not exists article(
--     id varchar(36) not null comment '主键ID',
--     title varchar(32) not null comment '文章ID',
--     create_user_id varchar(36) not null comment '作者ID',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     description varchar(200) null comment '描述',
--     cate_id varchar(36) not null comment '分类ID',
--     avatar varchar(200) null comment '封面图片',
--     reading int(11) null default 0 comment '阅读量',
--     content text null comment '文章内容',
--     state tinyint(1) default 1 comment '文章状态：0：禁用；1：启用；默认：1；',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；' 
-- )

-- insert into article values ("bf30b589-7004-585a-3777-b5fc73c2d73d","vue3中使用mapbox-gl","cbd6b945-ce98-d813-2863-97f67d2b5b6d","2022-12-30 13:30:20","2022-12-30 13:30:20","vue3中使用mapbox-gl，创建地图，加载geojson、vector地图数据","9ddf400c-0b5b-f50e-c4a6-ccc0339b4fee","",0,"",1,0)

-- select a.title,u.username from article as a,user as u where a.create_user_id = u.id;

-- 文章分类表
-- create table if not exists category(
--     id varchar(36) not null comment '主键',
--     parent_id varchar(36) not null default 0 comment '父级ID，默认：0',
--     name varchar(32) not null comment '分类名称',
--     description varchar(200) null comment '分类描述',
--     avatar varchar(200) null comment '图片',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     state tinyint(1) default 1 comment '状态 0：禁用；1：启用；默认：1；',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     primary key(id)
-- )

-- 文章标签表
-- create table if not exists tag(
--     id varchar(36) not null comment '主键',
--     name varchar(32) not null comment '标签名称',
--     description varchar(200) null comment '标签描述',
--     avatar varchar(200) null comment '图片',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     state tinyint(1) default 1 comment '状态 0：禁用；1：启用；默认：1；',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     primary key(id)
-- )

-- 友情链接表
-- create table if not exists link(
--     id varchar(36) not null comment '主键',
--     name varchar(32) not null comment '链接名称',
--     url varchar(250) not null comment '链接地址',
--     description varchar(200) null comment '链接描述',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     state tinyint(1) default 1 comment '状态 0：禁用；1：启用；默认：1；',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     primary key(id)
-- )

-- 标签
-- create table if not exists article_tag_relation(
--     id varchar(36) not null comment '主键',
--     article_id varchar(36) not null comment '文章ID',
--     tag_id varchar(36) not null comment '标签ID',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     primary key(id)
-- )

-- 文章点赞表
-- use javacat;
-- create table if not exists article_like_relation(
--     id varchar(36) not null comment '主键',
--     article_id varchar(36) not null comment '文章ID',
--     user_id varchar(36) not null comment '用户ID',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     primary key(id)
-- )

-- 文章收藏表
-- create table if not exists article_collect_relation(
--     id varchar(36) not null comment '主键',
--     article_id varchar(36) not null comment '文章ID',
--     user_id varchar(36) not null comment '用户ID',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     primary key(id)
-- )

-- 分类关注表
-- create table if not exists category_follow_relation(
--     id varchar(36) not null comment '主键',
--     category_id varchar(36) not null comment '分类ID',
--     user_id varchar(36) not null comment '用户ID',
--     createtime datetime null comment '创建时间',
--     updatetime datetime null comment '更新时间',
--     is_delete tinyint(1) default 0 comment '假删除 0：未删除；1：删除；默认：0；',
--     primary key(id)
-- )

use javacat;

select id,username,email,phone from user;
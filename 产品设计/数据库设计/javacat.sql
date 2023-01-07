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

-- 评论表
-- create table if not exists comment(
--     id varchar(36) not null comment '主键ID',
--     target_type tinyint(1) not null comment '区分文章还是动态,0:文章;1：动态',
--     target_id varchar(36) not null comment '被评论的文章或者动态的ID',
--     comment_user_id varchar(36) not null comment '评论者ID',
--     createtime datetime not null comment '评论时间',
--     content varchar(250) not null comment '评论内容',
--     state tinyint(1) default 1 comment '评论状态：0：禁用；1：启用（默认）',
--     is_delete tinyint(1) default 0 comment '是否删除：0：否（默认）；1：是',
--     primary key(id)
-- )


-- 回复表
-- create table if not exists reply(
--     id varchar(36) not null comment '主键ID',
--     target_type tinyint(1) not null comment '区分文章还是动态,0:文章;1：动态',
--     target_id varchar(36) not null comment '被评论的文章或者动态的ID',
--     comment_id varchar(36) not null comment '被回复评论的ID',
--     createtime datetime not null comment '评论时间',
--     reply_user_id varchar(36) not null comment '回复者ID',
--     to_reply_user_id varchar(36) not null comment '被回复者ID',
--     content varchar(250) not null comment '评论内容',
--     state tinyint(1) default 1 comment '评论状态：0：禁用；1：启用（默认）',
--     is_delete tinyint(1) default 0 comment '是否删除：0：否（默认）；1：是',
--     primary key(id)
-- )

-- 插入一条评论
-- insert into comment values ("e6e3dceb-9efe-9a5b-06b3-a5e24b26babb",0,"bf30b589-7004-585a-3777-b5fc73c2d73d","e7143382-d0f7-3d6a-615e-00dfe3ba5fa7","2023-01-05 10:18:00","如何向MySQL数据库批量插入10万条数据",1,0);
-- select u.username,c.createtime,c.content from comment as c,user as u  where target_id = "bf30b589-7004-585a-3777-b5fc73c2d73d" and u.id = c.comment_user_id;
-- select u.name,u.work,c.createtime,c.content from comment as c,user as u  left join on u.id = c.comment_user_id where c.object_id = "bf30b589-7004-585a-3777-b5fc73c2d73d";
-- 插入一条回复
-- insert into reply values ("5f1e2482-b750-c671-a6b5-4edb052ba063",0,"bf30b589-7004-585a-3777-b5fc73c2d73d","e6e3dceb-9efe-9a5b-06b3-a5e24b26babb","2023-01-05 10:38:32","be934a92-e81a-8922-8e5a-710e2643de56","e7143382-d0f7-3d6a-615e-00dfe3ba5fa7","方案一：使用for循环一条条插入;方案二：生成insert into语句",1,0);
-- create table if not exists user_follow_relation(
--     id varchar(36) not null comment '主键ID',
--     user_id varchar(36) not null comment '被关注用户ID',
--     follow_user_id varchar(36) not null comment '关注者ID',
--     createtime datetime not null comment '创建时间',
--     is_delete tinyint(1) default 0 comment '是否删除：0：否（默认）；1：是',
--     primary key(id)
-- )
-- select id,title from article;




-- 角色表
    --  create table if not exists role(
    --     id varchar(36) not null comment '主键ID',
    --     name varchar(32) not null comment '角色名称',
    --     description varchar(250) not null comment '角色描述',
    --     createtime datetime default null comment '创建时间',
    --     updatetime datetime default null comment '更新时间',
    --     state tinyint(1) default 1 comment '角色状态：0：禁用；1：启用（默认）',
    --     is_delete tinyint(1) default 0 comment '是否删除：0：是；1：否（默认）'
    --   )


-- 用户-角色-关联表
    -- create table if not exists user_role_relation(
    -- id varchar(36) not null comment '主键ID',
    -- user_id varchar(36) not null comment '用户ID',
    -- role_id varchar(36) not null comment '角色ID',
    -- createtime datetime not null comment '创建时间',
    -- primary key(id)
    -- )

-- 模块表
    -- create table if not exists module(
    -- id varchar(36) not null comment '主键ID',
    -- parent_id varchar(36) default '0' comment '上级模块，默认顶级模块：0；',
    -- name varchar(32) not null comment '模块名称',
    -- mark varchar(250) not null comment '模块标识',
    -- url varchar(250) not null comment '模块地址',
    -- icon varchar(250) not null comment '图标',
    -- sort int(11) default 0 comment '排序',
    -- remark varchar(250) null comment '模块备注',
    -- state tinyint(1) default 1 comment '模块状态：0：禁用；1：启用(默认)；',
    -- is_delete tinyint(1) default 0 comment '是否删除：0：否（默认）；1：是；',
    -- primary key(id)
    -- )

-- 模块角色关联表


-- 用户信息
-- select id,username,email from user limit 1,20;

-- 文章查询
-- select id,title,description from article;

-- 专栏表
-- select id,name from category;

-- -- -- -- -- -- -- --
-- -- 文章关联标签 -- --
-- -- -- -- -- -- -- --

-- 标签表
-- insert into tag values ("a76c7cfd-3c9d-e42f-c86d-192cf9d5b5ae","WebGIS","Web GIS是Internet技术应用于GIS开发的产物，是现代GIS技术的重要组成部分。常见的Web GIS开发软件有超擎图形。",null,"2023-01-06 14:13:20",null,1,0);
-- insert into tag values ("ff81568f-0e40-ca5f-03f4-ca6416fe07f5","SQL","结构化查询语言（Structured Query Language）简称SQL，是一种特殊目的的编程语言，是一种数据库查询和程序设计语言，用于存取数据以及查询、更新和管理关系数据库系统。",null,"2023-01-06 14:17:47",null,1,0);
-- insert into tag values ("38c8a243-c42b-e528-e66e-20f80959ae36","GeoJson","GeoJSON是一种对各种地理数据结构进行编码的格式，基于Javascript对象表示法(JavaScript Object Notation, 简称JSON)的地理空间信息数据交换格式。",null,"2023-01-06 14:13:20",null,1,0,0);
-- insert into tag values ("d4a5018c-b943-cda7-815e-b2fe45ef787c","JSON","JSON（JavaScript Object Notation, JS对象简谱）是一种轻量级的数据交换格式。",null,"2023-01-06 14:13:20",null,1,0,0);
-- insert into tag values ("db98f41f-d0a1-12db-eb4e-e84c9894f944","Axios","Axios，是一个基于promise [5]  的网络请求库，作用于node.js和浏览器中，它是 isomorphic 的(即同一套代码可以运行在浏览器和node.js中)。",null,"2023-01-06 14:35:01",null,1,0,0);

-- 给tag表添加推荐字段

-- alter table tag add recommend tinyint(1) default 0 comment '是否推荐：0：不推荐（默认）；1：推荐；'

-- show create table tag;

-- select id,name,left(description,60) from tag;

-- 添加标签文章关联
-- insert into article_tag_relation values ("3b0deb97-9ade-b0bf-f5b9-a4525829effe","bf30b589-7004-585a-3777-b5fc73c2d73d","a76c7cfd-3c9d-e42f-c86d-192cf9d5b5ae","2023-01-06 14:41:37",null,0)
-- insert into article_tag_relation values ("c8f45289-d932-dc8b-8ac4-a0f2e6748a1d","bf30b589-7004-585a-3777-b5fc73c2d73d","38c8a243-c42b-e528-e66e-20f80959ae36","2023-01-06 15:59:10",null,0)
-- 标签文章关联
-- select * from article_tag_relation;


-- -- -- -- -- -- -- --
-- -- 用户点赞文章 -- --
-- -- -- -- -- -- -- --

-- -- 詹姆斯高斯赵 点赞 Vue3使用mapboxgl 文章
-- insert into article_like_relation values("e5c22fbd-2a86-9d91-28a7-a882c2447905","bf30b589-7004-585a-3777-b5fc73c2d73d","613d851e-d409-4b8e-bd49-47d1fcb368e5","2023-01-05 13:39:23",null,0);
-- 程序员范某 点赞 Vue3使用mapboxgl 文章
-- insert into article_like_relation values("54d0dd29-fc00-0cb2-4c97-86c86ed9063f","bf30b589-7004-585a-3777-b5fc73c2d73d","394d7e5a-1c33-bea4-ddc8-bf8a8d7d9ce6","2023-01-05 13:42:23",null,0);


-- -- -- -- -- -- -- --
-- -- 用户收藏文章 -- --
-- -- -- -- -- -- -- --

-- select user.id,user.username,article.id as articleId,article.title from user left join article on 1;

-- insert into article_collect_relation values ("184e2de8-64df-c9a5-b8ff-2becbb28b305","bf30b589-7004-585a-3777-b5fc73c2d73d","cbd6b945-ce98-d813-2863-97f67d2b5b6d","2023-01-06 14:56:09",null,0);
-- insert into article_collect_relation values ("ca7b5064-3177-4681-cdcc-c1de2e80b230","bf30b589-7004-585a-3777-b5fc73c2d73d","e7143382-d0f7-3d6a-615e-00dfe3ba5fa7","2023-01-06 14:56:09",null,0);

-- insert into article_collect_relation values ("56e7c357-c65e-5fec-57e6-12f2f14dc686","bf30b589-7004-585a-3777-b5fc73c2d73d","394d7e5a-1c33-bea4-ddc8-bf8a8d7d9ce6","2023-01-06 15:01:09",null,0);

-- (select u.id as userid,u.username as username from user as u) union (select a.id as articleId,a.title as articleTitle from article as a);


-- -- -- -- -- -- -- --
-- -- -- 评 论 -- -- --
-- -- -- -- -- -- -- --


-- 首页文章列表
-- select user.id as userid,user.username as username,user.avatar as avatar,user.work as work,(select count(1) from user_follow_relation where user_id = user.id) as fansCount,article.title,article.id,article.createtime,category.name,(select count(1) from article_like_relation where article_id = article.id and user_id = "394d7e5a-1c33-bea4-ddc8-bf8a8d7d9ce6") as islike,(select count(1) from article_collect_relation where article_id = article.id and user_id = "394d7e5a-1c33-bea4-ddc8-bf8a8d7d9ce6") as iscollect,(select count(1) from article_like_relation where article_id = article.id) as likecount,(select count(1) from article_collect_relation where article_id = article.id) as collectcount from article,user,category where user.id = article.create_user_id and category.id = article.cate_id ;

-- select article.title,article_tag_relation.tag_id from article right outer join article_tag_relation on ;
-- select tag_id from article_tag_relation where article_id = "bf30b589-7004-585a-3777-b5fc73c2d73d"
-- select * from article left join (select tag.id as tagId ,tag.name as tagName from tag where id in (select tag_id from article_tag_relation where article_id = "bf30b589-7004-585a-3777-b5fc73c2d73d")) on 1 = 1;
-- 左关联实现文章 标签查询
-- select article.title,article_tag_relation.tag_id,tag.name from article left join article_tag_relation on article.id = article_tag_relation.article_id left join tag on tag.id = article_tag_relation.tag_id;



-- -- -- -- -- -- -- --
-- -- -- 链 接 -- -- --
-- -- -- -- -- -- -- --

-- insert into link values("4bb292ab-7499-d163-6e69-0fbaf970c6e5","C语言中文网","http://c.biancheng.net/","C语言中文网是中国领先的C语言程序设计专业网站，提供C语言入门经典教程、C语言编译器、C语言函数手册，C语言编程技巧，C语言考试试题等，是学习、自学C语言程序设计的好帮手。","2023-01-07 10:38:21",null,0,1,0);
-- insert into link values("4d18b369-4068-889f-9be1-f1d0c6eb436e","BEJSON","https://www.bejson.com/","在线,JSON,JSON 校验,格式化,xml转json 工具,在线工具,json视图,可视化,程序,服务器,域名注册,正则表达式,测试,在线json格式化工具,json 格式化,json格式化工具,json字符串格式化,json 在线查看器,json在线,json 在线验证,json tools online,在线文字对比工具,json解析","2023-01-07 10:41:03",null,0,1,0);
-- insert into link values("63f893ff-2391-b095-de80-e1181988c4cc","DiceBear Avatars","https://avatars.dicebear.com/","DiceBear是设计师和开发人员的化身库。您可以在简单的身份图标和可爱的设计角色之间进行选择。","2023-01-07 10:41:03",null,0,1,0,null,null);
-- alter table link add avatar varchar(250) default null comment '链接封面图片';
-- alter table link add click int(11) default 0 comment '链接的点击量';
select name,url,left(description,50),avatar,click from link;
-- show create table link;



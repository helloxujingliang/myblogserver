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


-- 用户点赞文章

-- -- 詹姆斯高斯赵 点赞 Vue3使用mapboxgl 文章
-- insert into article_like_relation values("e5c22fbd-2a86-9d91-28a7-a882c2447905","bf30b589-7004-585a-3777-b5fc73c2d73d","613d851e-d409-4b8e-bd49-47d1fcb368e5","2023-01-05 13:39:23",null,0);
-- 程序员范某 点赞 Vue3使用mapboxgl 文章
-- insert into article_like_relation values("54d0dd29-fc00-0cb2-4c97-86c86ed9063f","bf30b589-7004-585a-3777-b5fc73c2d73d","394d7e5a-1c33-bea4-ddc8-bf8a8d7d9ce6","2023-01-05 13:42:23",null,0);

-- 首页文章列表
-- select user.id as userid,user.username as username,user.avatar as avatar,user.work as work,(select count(1) from user_follow_relation where user_id = user.id) as fansCount,article.title,article.id,article.createtime,category.name,(select count(1) from article_like_relation where article_id = article.id and user_id = "394d7e5a-1c33-bea4-ddc8-bf8a8d7d9ce6") as islike,(select count(1) from article_like_relation where article_id = article.id) as likecount from article,user,category where user.id = article.create_user_id and category.id = article.cate_id;


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

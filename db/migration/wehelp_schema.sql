#创建数据库
DROP database IF exists wehelp;
create database wehelp;
use wehelp;

drop table if exists t_user;
drop table if exists t_organization;
drop table if exists t_resource;
drop table if exists t_role;
drop table if exists t_role_resource;
drop table if exists t_user_role;

create table t_resource (
  id bigint auto_increment,
  name varchar(100),
  type varchar(50),
  url varchar(200),
  parent_id bigint,
  permission varchar(100),
  available bool default false,
  constraint pk_t_resource primary key(id)
) charset=utf8 ENGINE=InnoDB;
create index idx_t_resource_parent_id on t_resource(parent_id);

create table t_role (
  id bigint auto_increment,
  name varchar(100),
  description varchar(100),
  available bool default false,
  constraint pk_t_role primary key(id)
) charset=utf8 ENGINE=InnoDB;

create table t_role_resource(
  role_id bigint,
  resource_id bigint,
  foreign key(role_id) references t_role(id),
  foreign key(resource_id) references t_resource(id)
)charset=utf8 ENGINE=InnoDB;

create table t_organization (
  id bigint auto_increment,
  name varchar(100),
  parent_id bigint,
  available bool default false,
  constraint pk_t_organization primary key(id)
) charset=utf8 ENGINE=InnoDB;
create index idx_t_organization_parent_id on t_organization(parent_id);

create table t_user (
  id bigint auto_increment,
  organization_id bigint,
  user_name varchar(100) COMMENT '用户账号',
  nick_name varchar(255) COMMENT '用户昵称',
  password varchar(100),
  salt varchar(100),
  locked bool default false,
  sex varchar(10),
  birth_date  TIMESTAMP COMMENT '出生年月',
  phone varchar(15) COMMENT '电话号码',
  email  varchar(255) COMMENT '邮箱',
  address  varchar(255) COMMENT '地址',
  register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '注册日期',
  foreign key(organization_id) references t_organization(id),
  constraint pk_t_user primary key(id)
) charset=utf8 ENGINE=InnoDB;
create unique index idx_t_user_username on t_user(username);
create index idx_t_user_organization_id on t_user(organization_id);

create table t_user_role (
  user_id bigint,
  role_id bigint,
  foreign key(role_id) references t_role(id),
  foreign key(user_id) references t_user(id)
) charset=utf8 ENGINE=InnoDB;

##信息类型表
DROP TABLE IF EXISTS t_message_type;
CREATE TABLE t_message_type (
  id int(6) NOT NULL AUTO_INCREMENT COMMENT '唯一标识且自增',
  name varchar(20) NOT NULL COMMENT '类型名称',
  description varchar(255) COMMENT '描述',
  available  bool default false,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT '信息类型';

##信息状态表
DROP TABLE IF EXISTS t_message_state;
CREATE TABLE t_message_state (
  id int(6) NOT NULL AUTO_INCREMENT COMMENT '唯一标识且自增',
  name varchar(20) NOT NULL COMMENT '类型名称',
  description varchar(255) COMMENT '描述',
  available  bool default false,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT '信息状态';

DROP TABLE IF EXISTS t_message;
CREATE TABLE t_message (
  id bigint NOT NULL AUTO_INCREMENT COMMENT '唯一标识且自增',
  user_id bigint NOT NULL COMMENT '消息创建者',
  type_id int(6) NOT NULL COMMENT '消息状态',
  state_id int(6) NOT NULL COMMENT '消息类型',
  content varchar(1200) NOT NULL COMMENT '消息内容',
  contacts varchar(30) NOT NULL COMMENT '联系信息',
  locale varchar(100) COMMENT '约定地点',
  longitude FLOAT COMMENT '经度',
  latitude FLOAT COMMENT '纬度',
  create_date TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  published_date TIMESTAMP(3) COMMENT '发布时间',
  foreign key(user_id) references t_user(id),
  foreign key(type_id) references t_message_type(id),
  foreign key(state_id) references t_message_state(id),
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT '消息';

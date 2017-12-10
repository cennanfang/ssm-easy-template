DELIMITER ;
delete from t_user;
delete from t_role;
delete from t_resource;
delete from t_organization;

insert into t_organization values(1, '总公司', 0,  true);
insert into t_organization values(2, '分公司1', 1,  true);
insert into t_organization values(3, '分公司2', 1,  true);
insert into t_organization values(4, '分公司11', 2,  true);

insert into t_resource values(1, '资源', 'menu', '', 0,  '', true);

insert into t_resource values(11, '组织机构管理', 'menu', '/organization', 1,  'organization:*', true);
insert into t_resource values(12, '组织机构新增', 'button', '', 11,  'organization:create', true);
insert into t_resource values(13, '组织机构修改', 'button', '', 11,  'organization:update', true);
insert into t_resource values(14, '组织机构删除', 'button', '', 11,  'organization:delete', true);
insert into t_resource values(15, '组织机构查看', 'button', '', 11,  'organization:view', true);

insert into t_resource values(21, '用户管理', 'menu', '/user', 1,  'user:*', true);
insert into t_resource values(22, '用户新增', 'button', '', 21,  'user:create', true);
insert into t_resource values(23, '用户修改', 'button', '', 21,  'user:update', true);
insert into t_resource values(24, '用户删除', 'button', '', 21,  'user:delete', true);
insert into t_resource values(25, '用户查看', 'button', '', 21,  'user:view', true);

insert into t_resource values(31, '资源管理', 'menu', '/resource', 1,  'resource:*', true);
insert into t_resource values(32, '资源新增', 'button', '', 31,  'resource:create', true);
insert into t_resource values(33, '资源修改', 'button', '', 31,  'resource:update', true);
insert into t_resource values(34, '资源删除', 'button', '', 31,  'resource:delete', true);
insert into t_resource values(35, '资源查看', 'button', '', 31,  'resource:view', true);

insert into t_resource values(41, '角色管理', 'menu', '/role', 1,  'role:*', true);
insert into t_resource values(42, '角色新增', 'button', '', 41,  'role:create', true);
insert into t_resource values(43, '角色修改', 'button', '', 41,  'role:update', true);
insert into t_resource values(44, '角色删除', 'button', '', 41,  'role:delete', true);
insert into t_resource values(45, '角色查看', 'button', '', 41,  'role:view', true);

insert into t_resource values(51, '信息管理', 'menu', '/message', 1,  'message:*', true);
insert into t_resource values(52, '信息新增', 'button', '', 51,  'message:create', true);
insert into t_resource values(53, '信息修改', 'button', '', 51,  'message:update', true);
insert into t_resource values(54, '信息删除', 'button', '', 51,  'message:delete', true);
insert into t_resource values(55, '信息查看', 'button', '', 51,  'message:view', true);

insert into t_resource values(61, '审核管理', 'menu', '/review', 61,  'message:view', true);
insert into t_resource values(62, '可以发布', 'button', '', 61,  'message:publish', true);
insert into t_resource values(63, '禁止发布', 'button', '', 61,  'message:banish', true);

insert into t_role values(1, 'admin', '超级管理员', true);
insert into t_role values(2, 'user', '普通用户', true);
insert into t_role values(3, 'reviewer', '审核员', true);

insert into t_role_resource(role_id, resource_id) values(1, 1);
insert into t_role_resource(role_id, resource_id) values(1, 12);
insert into t_role_resource(role_id, resource_id) values(1, 13);
insert into t_role_resource(role_id, resource_id) values(1, 14);
insert into t_role_resource(role_id, resource_id) values(1, 15);
insert into t_role_resource(role_id, resource_id) values(1, 21);
insert into t_role_resource(role_id, resource_id) values(1, 22);
insert into t_role_resource(role_id, resource_id) values(1, 23);
insert into t_role_resource(role_id, resource_id) values(1, 24);
insert into t_role_resource(role_id, resource_id) values(1, 25);
insert into t_role_resource(role_id, resource_id) values(1, 31);
insert into t_role_resource(role_id, resource_id) values(1, 32);
insert into t_role_resource(role_id, resource_id) values(1, 33);
insert into t_role_resource(role_id, resource_id) values(1, 34);
insert into t_role_resource(role_id, resource_id) values(1, 35);
insert into t_role_resource(role_id, resource_id) values(1, 41);
insert into t_role_resource(role_id, resource_id) values(1, 32);
insert into t_role_resource(role_id, resource_id) values(1, 43);
insert into t_role_resource(role_id, resource_id) values(1, 44);
insert into t_role_resource(role_id, resource_id) values(1, 45);

insert into t_role_resource(role_id, resource_id) values(2, 21);
insert into t_role_resource(role_id, resource_id) values(2, 22);
insert into t_role_resource(role_id, resource_id) values(2, 23);
insert into t_role_resource(role_id, resource_id) values(2, 24);
insert into t_role_resource(role_id, resource_id) values(2, 25);
insert into t_role_resource(role_id, resource_id) values(2, 51);
insert into t_role_resource(role_id, resource_id) values(2, 52);
insert into t_role_resource(role_id, resource_id) values(2, 53);
insert into t_role_resource(role_id, resource_id) values(2, 54);
insert into t_role_resource(role_id, resource_id) values(2, 55);

insert into t_role_resource(role_id, resource_id) values(3, 51);
insert into t_role_resource(role_id, resource_id) values(3, 52);
insert into t_role_resource(role_id, resource_id) values(3, 53);
insert into t_role_resource(role_id, resource_id) values(3, 54);
insert into t_role_resource(role_id, resource_id) values(3, 55);
insert into t_role_resource(role_id, resource_id) values(3, 61);
insert into t_role_resource(role_id, resource_id) values(3, 62);
insert into t_role_resource(role_id, resource_id) values(3, 63);

insert into t_user(id, user_name, password, locked, nick_name, gender,  phone, email, address)
values(1, 'naying', '000000', FALSE , '那英', '女',  '13888888888', 'meigui@qq.com', '华盛顿');
insert into t_user(id, user_name, password, locked, nick_name, gender,  phone, email, address)
values(2, 'wangfeng', '000000', FALSE, '汪峰', '男', '13999999999', 'jiege@qq.com', '伦敦');
insert into t_user(id, user_name, password, locked, nick_name, gender,  phone, email, address)
values(3, 'zhangjie', '000000', FALSE, '张杰', '男', '13333333333', 'zhangsan@qq.com', '北京');
insert into t_user(id, user_name, password, locked, nick_name, gender,  phone, email, address)
values(4, 'huazai', '000000', FALSE, '华仔', '男', '13666666666', 'lisi@qq.com', '香港');

INSERT INTO t_user_role(user_id, role_id) VALUES (1, 3);
INSERT INTO t_user_role(user_id, role_id) VALUES (2, 2);
INSERT INTO t_user_role(user_id, role_id) VALUES (3, 2);
INSERT INTO t_user_role(user_id, role_id) VALUES (4, 1);

insert into t_message_type(name, description, available) values('车出行', '车辆出现信息',TRUE );
insert into t_message_type(name, description, available) values('人出行', '人出行信息', TRUE);
insert into t_message_type(name, description, available) values('招聘', '发布招聘信息', TRUE);
insert into t_message_type(name, description, available) values('求职', '发布求职信息', TRUE);
insert into t_message_type(name, description, available) values('打听', '打听信息', TRUE);

insert into t_message_state(name, description, available) values('编辑中', '信息编辑中',TRUE );
insert into t_message_state(name, description, available) values('待审核', '信息待审核', TRUE);
insert into t_message_state(name, description, available) values('发布中', '信息发布中', TRUE);
insert into t_message_state(name, description, available) values('被举报', '信息被举报', TRUE);
insert into t_message_state(name, description, available) values('已禁止', '信息已禁止', TRUE);

insert into t_message(content, contacts, user_id, type_id, state_id) values ('(车找人）明天早上册亨到贵阳可坐4人，越早越好，有同路的朋友请联系15597995902', '12333333333', 1, 1, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('人找车 明天早上册亨去兴义  一人 13595900677', '16633339999', 2, 2, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【车找人】安龙到册亨   轿车   联系电话15186409347', '16633339992', 1, 1, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【人找车】册亨到兴义，晚上8点走，电话：18296087317', '16633339993', 1, 2, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【人找车】兴义到安龙或者册亨，一个人，随时可走，电话：153-2969-4518', '16633339994', 2, 2, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【车找人】越野车找人    兴义 回册亨20点左右走     可带3人    13379686263', '16633339995', 1, 1, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【车找人】23号早上7.30私家轿车到兴义机场，可坐2人有同路的请联系.电话15186354063', '16633339996', 1, 1, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【人找车】册亨到兴义,两个人,有顺路的师傅麻烦联系一下！15285466460（谢谢）', '16633339997', 2, 2, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【人找车】兴义至册亨，二人，可随时出发，暗号：18008592092。', '16633339997', 1, 2, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【人找车】八点以后册亨到安龙 1人，18286143540', '16633339997', 1, 2, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【车找人】晚上双江回册亨，有同路的电话联系，18296006142', '16633339997', 3, 1, 3);
insert into t_message(content, contacts, user_id, type_id, state_id) values ('【人找车】册亨到兴义,两个人,有顺路的师傅麻烦联系一下！15285466460（谢谢）', '16633339997', 4, 2, 3);

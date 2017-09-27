drop table if exists T_SURVEY_TEMPLATE;

/*==============================================================*/
/* Table: T_SURVEY_TEMPLATE                                     */
/*==============================================================*/
create table T_SURVEY_TEMPLATE
(
   SURVEY_TEMPLATE_ID   bigint not null auto_increment comment '问卷定义ID',
   SURVEY_TEMPL_CODE    varchar(20) comment '问卷编码',
   TEMPLATE_NAME        varchar(200) comment '问卷名称',
   SURVEY_OBJECT        int comment '调查对象 (1. 未分类个人客户 )',
   SURVEY_TYPE          int comment '问卷分类 1:健身问卷',
   DEFINE_TIME          datetime comment '定制时间',
   DEFINED_BY           bigint comment '定义人',
   INSERT_BY            bigint not null comment 'Who was the record modified by',
   INSERT_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record created',
   INSERT_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record inserted at system time',
   UPDATE_BY            bigint not null comment 'Who was the record modified by',
   UPDATE_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record last modified',
   UPDATE_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record last updated at system time',
   primary key (SURVEY_TEMPLATE_ID)
);

alter table T_SURVEY_TEMPLATE comment '问卷定义表';

drop table if exists T_CUSTOMER_SURVEY;

/*==============================================================*/
/* Table: T_CUSTOMER_SURVEY                                     */
/*==============================================================*/
create table T_CUSTOMER_SURVEY
(
   SURVEY_ID            bigint not null auto_increment comment '问卷id',
   SURVEY_OBJECT        varchar(2) comment '调查对象 (1. 默认个人客户 )
            ',
   SURVEY_TEMPLATE_ID   bigint comment '问卷定义ID',
   CUSTOMER_ID          bigint comment '客户id，主键，序列',
   PH_CERT_TYPE         char(2) comment '客户证件类型',
   PH_CERTI_CODE        varchar(30) comment '客户证件号码',
   PH_BIRTHDAY          datetime comment '客户出生日期',
   RESERVED_FIELD1      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD2      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD3      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD4      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD5      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD6      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD7      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD8      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD9      varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   RESERVED_FIELD10     varchar(50) comment '预留字段字符型 设计为字符串，根据配置可以转换为合适类型',
   INSERT_BY            bigint not null comment 'Who was the record modified by',
   INSERT_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record created',
   INSERT_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record inserted at system time',
   UPDATE_BY            bigint not null comment 'Who was the record modified by',
   UPDATE_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record last modified',
   UPDATE_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record last updated at system time',
   primary key (SURVEY_ID)
);

alter table T_CUSTOMER_SURVEY comment '问卷信息';

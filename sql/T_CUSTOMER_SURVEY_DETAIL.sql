drop table if exists T_CUSTOMER_SURVEY_DETAIL;

/*==============================================================*/
/* Table: T_CUSTOMER_SURVEY_DETAIL                              */
/*==============================================================*/
create table T_CUSTOMER_SURVEY_DETAIL
(
   DETAIL_ID            bigint not null auto_increment comment '问卷明细id，序列号',
   SURVEY_ID            bigint comment '问卷id',
   QUESTION_ID          bigint comment '调查问题id',
   QUESTION_CODE        varchar(20) comment '调查问题编号',
   QUESTION_OPTION_ID   bigint comment '调查问题选择项ID',
   QUESTION_OPTION_CODE varchar(20) comment '调查问题选择项CODE',
   QUESTION_ANSWER_TXT1 varchar(200) comment '填空答案1',
   QUESTION_ANSWER_TXT2 varchar(200) comment '填空答案2',
   QUESTION_ANSWER_TXT3 varchar(200) comment '填空答案3',
   QUESTION_ANSWER_TXT4 varchar(200) comment '填空答案4',
   RESERVED_FIELD1      varchar(50) comment '预留字段1',
   RESERVED_FIELD2      varchar(50) comment '预留字段2',
   RESERVED_FIELD3      varchar(50) comment '预留字段3',
   INSERT_BY            bigint not null comment 'Who was the record modified by',
   INSERT_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record created',
   INSERT_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record inserted at system time',
   UPDATE_BY            bigint not null comment 'Who was the record modified by',
   UPDATE_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record last modified',
   UPDATE_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record last updated at system time',
   primary key (DETAIL_ID)
);

alter table T_CUSTOMER_SURVEY_DETAIL comment '问卷答案信息';

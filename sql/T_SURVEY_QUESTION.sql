drop table if exists T_SURVEY_QUESTION;

/*==============================================================*/
/* Table: T_SURVEY_QUESTION                                     */
/*==============================================================*/
create table T_SURVEY_QUESTION
(
   QUESTION_ID          bigint not null auto_increment comment '调查问题id',
   QUESTION_CODE        varchar(20) comment '调查问题编号',
   SURVEY_TEMPLATE_ID   bigint comment '问卷定义ID',
   SURVEY_QUESTION      varchar(1000) comment '问题内容',
   TOP_QUESTION_FLAG    int comment '是否是顶层问题',
   QUESTION_TYPE        int comment '问题类型 多选择/回答/单选择/填空',
   QUESTION_ANSWER_NUM  int comment '需要填几个空',
   QUESTION_ORDER       int comment '问题的排序编号',
   INSERT_BY            bigint not null comment 'Who was the record modified by',
   INSERT_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record created',
   INSERT_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record inserted at system time',
   UPDATE_BY            bigint not null comment 'Who was the record modified by',
   UPDATE_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record last modified',
   UPDATE_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record last updated at system time',
   primary key (QUESTION_ID)
);

alter table T_SURVEY_QUESTION comment '问卷问题表';

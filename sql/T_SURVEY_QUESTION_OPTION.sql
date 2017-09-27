drop table if exists T_SURVEY_QUESTION_OPTION;

/*==============================================================*/
/* Table: T_SURVEY_QUESTION_OPTION                              */
/*==============================================================*/
create table T_SURVEY_QUESTION_OPTION
(
   QUESTION_OPTION_ID   bigint not null auto_increment comment '调查问题选择项ID',
   QUESTION_ID          bigint comment '调查问题ID',
   QUESTION_OPTION_CODE varchar(2) comment '选项编号(1.2.3 或A/B/C)',
   QUESTION_OPTION_DESC varchar(1000) comment '选项描述',
   SUB_QUESTION_FLAG    int comment '选项本身也可以作为问题',
   REF_QUESTION_ID      bigint comment '如果SUB_QUESTION_FLAG 为是，则QUESTION_CODE指向T_SURVEY_QUESTION',
   INSERT_BY            bigint not null comment 'Who was the record modified by',
   INSERT_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record created',
   INSERT_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record inserted at system time',
   UPDATE_BY            bigint not null comment 'Who was the record modified by',
   UPDATE_TIME          datetime not null default CURRENT_TIMESTAMP comment 'When was the record last modified',
   UPDATE_TIMESTAMP     timestamp not null default CURRENT_TIMESTAMP comment 'When was the record last updated at system time',
   primary key (QUESTION_OPTION_ID)
);

alter table T_SURVEY_QUESTION_OPTION comment '调查问卷的问题选项';

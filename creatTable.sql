CREATE TABLE TBL_S_DICTYPE
(
  SID          NUMBER(18) NOT NULL,
  CREATED_BY   VARCHAR2(32),
  CREATED_DT   DATE,
  VERSION      NUMBER(9),
  UPDATED_BY   VARCHAR2(32),
  UPDATED_DT   DATE,
  DICTYPE_CODE VARCHAR2(10),
  DICTYPE_NAME VARCHAR2(32),
  FDESC        VARCHAR2(255)
);
COMMENT ON TABLE TBL_S_DICTYPE
  IS '字典类型表';
COMMENT ON COLUMN TBL_S_DICTYPE.SID
  IS '主键';
COMMENT ON COLUMN TBL_S_DICTYPE.CREATED_BY
  IS '创建人';
COMMENT ON COLUMN TBL_S_DICTYPE.CREATED_DT
  IS '创建时间';
COMMENT ON COLUMN TBL_S_DICTYPE.VERSION
  IS '版本控制';
COMMENT ON COLUMN TBL_S_DICTYPE.UPDATED_BY
  IS '修改人';
COMMENT ON COLUMN TBL_S_DICTYPE.UPDATED_DT
  IS '修改时间';
COMMENT ON COLUMN TBL_S_DICTYPE.DICTYPE_CODE
  IS '字典类型编码';
COMMENT ON COLUMN TBL_S_DICTYPE.DICTYPE_NAME
  IS '字典类型名称';
COMMENT ON COLUMN TBL_S_DICTYPE.FDESC
  IS '备注';
  
  CREATE TABLE TBL_S_DIC
(
  SID          NUMBER(18) NOT NULL,
  CREATED_BY   VARCHAR2(32),
  CREATED_DT   DATE,
  VERSION      NUMBER(9),
  UPDATED_BY   VARCHAR2(32),
  UPDATED_DT   DATE,
  DICT_CODE    VARCHAR2(10),
  DICT_NAME    VARCHAR2(60),
  DICTTYPE_SID NUMBER(18),
  FDESC        VARCHAR2(255)
);
COMMENT ON TABLE TBL_S_DIC
  IS '字典表';
COMMENT ON COLUMN TBL_S_DIC.SID
  IS '主键';
COMMENT ON COLUMN TBL_S_DIC.CREATED_BY
  IS '创建人';
COMMENT ON COLUMN TBL_S_DIC.CREATED_DT
  IS '创建时间';
COMMENT ON COLUMN TBL_S_DIC.VERSION
  IS '版本控制';
COMMENT ON COLUMN TBL_S_DIC.UPDATED_BY
  IS '修改人';
COMMENT ON COLUMN TBL_S_DIC.UPDATED_DT
  IS '修改时间';
COMMENT ON COLUMN TBL_S_DIC.DICT_CODE
  IS '数据字典编码';
COMMENT ON COLUMN TBL_S_DIC.DICT_NAME
  IS '数据字典名称';
COMMENT ON COLUMN TBL_S_DIC.DICTTYPE_SID
  IS '数据字典类型';
COMMENT ON COLUMN TBL_S_DIC.FDESC
  IS '备注';
  CREATE TABLE TBL_S_DICITEM
(
  DICT_SID       INTEGER,
  DICTITEM_VALUE VARCHAR2(60),
  DICTITEM_CODE  VARCHAR2(10),
  DICTITEM_NAME  VARCHAR2(60),
  FDESC          VARCHAR2(255),
  SID            NUMBER(18) NOT NULL,
  CREATED_BY     VARCHAR2(32),
  CREATED_DT     DATE,
  VERSION        NUMBER(9),
  UPDATED_BY     VARCHAR2(32),
  UPDATED_DT     DATE
);
COMMENT ON TABLE TBL_S_DICITEM
  IS '数据字典项表';
COMMENT ON COLUMN TBL_S_DICITEM.DICT_SID
  IS '数据字典主表ID';
COMMENT ON COLUMN TBL_S_DICITEM.DICTITEM_VALUE
  IS '字典项值';
COMMENT ON COLUMN TBL_S_DICITEM.DICTITEM_CODE
  IS '字典项编码';
COMMENT ON COLUMN TBL_S_DICITEM.DICTITEM_NAME
  IS '字典项名称';
COMMENT ON COLUMN TBL_S_DICITEM.FDESC
  IS '备注';
COMMENT ON COLUMN TBL_S_DICITEM.SID
  IS '主键';
COMMENT ON COLUMN TBL_S_DICITEM.CREATED_BY
  IS '创建人';
COMMENT ON COLUMN TBL_S_DICITEM.CREATED_DT
  IS '创建时间';
COMMENT ON COLUMN TBL_S_DICITEM.VERSION
  IS '版本控制';
COMMENT ON COLUMN TBL_S_DICITEM.UPDATED_BY
  IS '修改人';
COMMENT ON COLUMN TBL_S_DICITEM.UPDATED_DT
  IS '修改时间';
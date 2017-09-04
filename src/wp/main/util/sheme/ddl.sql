drop table CARTTable;
drop table SHOPTable;
drop table BOARDTable;
drop table CUSTOMIZINGPTable;
drop table PRODUCTTable;
drop table INGDTable;
drop table USERTable;

drop sequence CARTTable_seq;
drop sequence SHOPTable_seq;
drop sequence BOARDTable_seq;
drop sequence CUSTOMIZINGPTable_seq;
drop SEQUENCE INGDTable_seq;

CREATE TABLE USERTable(
User_ID varchar2(10),
UPWD varchar2(20) NOT NULL,
UNAME varchar2(10) NOT NULL,
UBIRTH Date,
UADDR varchar2(50) NOT NULL,
UMOBILE varchar2(20) NOT NULL,
UGENDER varchar2(3),
EFFECT1 varchar2(20),
EFFECT2 varchar2(20),
EFFECT3 varchar2(20),
 constraint USER_User_ID_PK primary key(User_ID),
 constraint USER_UGENDER_CK CHECK(UGENDER IN('³²','¿©'))
);

create sequence INGDTable_seq nocache;

CREATE TABLE INGDTable(
    INGDNO number(10),
    INGDNAME VARCHAR2(100) NOT NULL,
    EFFECT1 VARCHAR2(100),
    EFFECT2 VARCHAR2(100),
    EFFECT3 VARCHAR2(100),
    
    CONSTRAINT INGDTable_INGDNAME_PK PRIMARY KEY(INGDNAME)
);

CREATE TABLE PRODUCTTable(
  PNAME VARCHAR2(500),
  INGDNAME1 varchar2(100),
  INGDNAME2 varchar2(100),
  INGDNAME3 varchar2(100),
  INGDNAME4 varchar2(100),
  INGDNAME5 varchar2(100),
  INGDNAME6 varchar2(100),
  INGDNAME7 varchar2(100),
  INGDNAME8 varchar2(100),
  INGDNAME9 varchar2(100),
  INGDNAME10 varchar2(100),
  INGDNAME11 varchar2(100),
  INGDNAME12 varchar2(100),
  INGDNAME13 varchar2(100),
  INGDNAME14 varchar2(100),
  INGDNAME15 varchar2(100),
  INGDNAME16 varchar2(100),
  INGDNAME17 varchar2(100),
  INGDNAME18 varchar2(100),
  INGDNAME19 varchar2(100),
  INGDNAME20 varchar2(100),
  INGDNAME21 varchar2(100),
  INGDNAME22 varchar2(100),
  INGDNAME23 varchar2(100),
  INGDNAME24 varchar2(100),
  INGDNAME25 varchar2(100),
  INGDNAME26 varchar2(100),
  INGDNAME27 varchar2(100),
  INGDNAME28 varchar2(100),
  INGDNAME29 varchar2(100),
  PRICE NUMBER(38) NOT NULL,
  PCOMPANY VARCHAR2(500),
  url varchar2(500),
  
  constraint PRODUCT_PNAME_PK primary key(PNAME)
);

create sequence CUSTOMIZINGPTable_seq nocache;

CREATE TABLE customizingPtable(
CPNO number(5),
CPNAME varchar2(500) NOT NULL,
User_ID varchar2(20),
INGDNAME1 VARCHAR2(100),
INGDNAME2 varchar2(100),
INGDNAME3 varchar2(100),
INGDNAME4 varchar2(100),
INGDNAME5 varchar2(100),
INGDNAME6 varchar2(100),
INGDNAME7 varchar2(100),
INGDNAME8 varchar2(100),
INGDNAME9 varchar2(100),
INGDNAME10 varchar2(100),
PRICE number(8) NOT NULL,
AMOUNT number(3),
shopFlag number(2),

constraint CUSTMOZINGPRODUCT_CPNO_PK primary key(CPNO),
constraint CUSTMOZINGPRODUCT_User_ID_FK foreign key(User_ID) references USERTable(User_ID)
);

create sequence BOARDTable_seq nocache;

CREATE TABLE BOARDTable(
    BNO number(10),
    BTITLE VARCHAR2(10) NOT NULL,
    USER_ID VARCHAR2(10) NOT NULL,
    BDATE DATE DEFAULT SYSDATE,
    BCONTENT VARCHAR2(200) NOT NULL,
    BCOUNT NUMBER(3) NOT NULL,
    BCOMMENT number(10),
    
    CONSTRAINT BOARDTable_BNO_PK PRIMARY KEY(BNO),
    CONSTRAINT BOARDTable_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USERTABLE(USER_ID),
    CONSTRAINT BOARDTable_BNO_BCOMMENT_FK FOREIGN KEY(BCOMMENT) REFERENCES BOARDTable(BNO)
);

create sequence SHOPTable_seq nocache;

CREATE TABLE SHOPTable(
    SNO number(10),
    USER_ID VARCHAR2(10) NOT NULL,
    AMOUNT NUMBER(3) NOT NULL,
    CHARGE NUMBER(9) NOT NULL,
    PNAME VARCHAR2(500),
    SDATE DATE DEFAULT SYSDATE,
    CPNO number(10),
    
    CONSTRAINT SHOP_SNO_PK PRIMARY KEY(SNO),
    CONSTRAINT SHOP_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES PRODUCTTABLE(PNAME),
    CONSTRAINT SHOP_PNAME_FK FOREIGN KEY(PNAME) REFERENCES PRODUCTTABLE(PNAME)
);

create sequence CARTTable_seq nocache;

CREATE TABLE CARTTable(
    CNO number(10),
    USER_ID VARCHAR2(10) NOT NULL,
    PNAME VARCHAR2(500) NOT NULL,
    CDATE DATE DEFAULT SYSDATE,
    AMOUNT NUMBER(3) NOT NULL,
    
    CONSTRAINT CART_CNO_PK PRIMARY KEY(CNO),
    CONSTRAINT CART_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES USERTABLE(USER_ID),
    CONSTRAINT CART_PNAME_FK FOREIGN KEY(PNAME) REFERENCES PRODUCTTABLE(PNAME)
);

commit;

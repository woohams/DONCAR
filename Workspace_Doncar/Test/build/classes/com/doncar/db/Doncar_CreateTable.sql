--DB�Դϴ�.

--���� SQL��
--������Ʈ�Խ���
DROP SEQUENCE RENT_BOARD_SEQ

CREATE SEQUENCE RENT_BOARD_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE RENT_BOARD

CREATE TABLE RENT_BOARD
(
    RENT_BOARD_NO    NUMBER           NOT NULL, 
    RENT_PROCESS     VARCHAR2(30)     NOT NULL, 
    RENT_TITLE       VARCHAR2(200)    NOT NULL, 
    RENT_WRITER      VARCHAR2(50)     NOT NULL, 
    RENT_COMPANY     VARCHAR2(100)    NOT NULL, 
    RENT_SIZE        VARCHAR2(20)     NOT NULL, 
    RENT_FUEL        VARCHAR2(20)     NOT NULL, 
    RENT_PRICE       NUMBER           NOT NULL, 
    RENT_LOCATION    VARCHAR2(100)    NOT NULL, 
    RENT_X_POINT     VARCHAR2(500)    NOT NULL, 
    RENT_Y_POINT     VARCHAR2(500)    NOT NULL, 
    RENT_REGDATE     DATE             NOT NULL, 
    RENT_IMG         VARCHAR2(500)    NOT NULL, 
    RENT_DELFLAG     VARCHAR2(2)      NOT NULL, 
    RENT_CARNO       VARCHAR2(20)     NOT NULL, 
    RENT_CARNAME     VARCHAR2(50)     NOT NULL, 
    CONSTRAINT RENT_BOARD_PK PRIMARY KEY (RENT_BOARD_NO)
)

--īǮ�Խ���
DROP SEQUENCE CARPOOL_BOARD_SEQ

CREATE SEQUENCE CARPOOL_BOARD_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE CARPOOL_BOARD

CREATE TABLE CARPOOL_BOARD
(
    CAR_BOARD_NO          NUMBER            NOT NULL, 
    CAR_BOARD_PROCESS     VARCHAR2(20)      NOT NULL, 
    CAR_BOARD_TITLE       VARCHAR2(100)     NOT NULL, 
    CAR_BOARD_WRITER      VARCHAR2(50)      NOT NULL, 
    CAR_BOARD_PRICE       NUMBER            NOT NULL, 
    CAR_BOARD_LOCATION    VARCHAR2(100)     NOT NULL, 
    CAR_BOARD_X_POINT     VARCHAR2(100)     NOT NULL, 
    CAR_BOARD_Y_POINT     VARCHAR2(100)     NOT NULL, 
    CAR_BOARD_REGDATE     DATE              NOT NULL, 
    CAR_BOARD_DELFLAG     VARCHAR2(2)       NOT NULL, 
    CAR_BOARD_CONTENT     VARCHAR2(4000)    NOT NULL, 
    CONSTRAINT CARPOOL_BOARD_PK PRIMARY KEY (CAR_BOARD_NO)
)

--�����Խ���
DROP SEQUENCE FREE_BOARD_SEQ

CREATE SEQUENCE FREE_BOARD_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE FREE_BOARD

CREATE TABLE FREE_BOARD
(
    FREE_BOARD_NO    NUMBER             NOT NULL, 
    FREE_TITLE       VARCHAR2(20)       NOT NULL, 
    FREE_WRITER      VARCHAR2(20)       NOT NULL, 
    FREE_CONTENT     VARCHAR2(4000)    NOT NULL, 
    FREE_REGDATE     DATE               NOT NULL, 
    FREE_DELFLAG     VARCHAR2(2)        NOT NULL, 
    CONSTRAINT FREE_BOARD_PK PRIMARY KEY (FREE_BOARD_NO)
)

-- DONCAR_MEMBER Table Create SQL
-- DROP SEQUENCE MEMBER_NO;
-- DROP TABLE DONCAR_MEMBER;
CREATE SEQUENCE MEMBER_NO;
CREATE TABLE DONCAR_MEMBER
(
    MEMBER_NO          NUMBER           PRIMARY KEY,
    MEMBER_ID          VARCHAR2(100)    UNIQUE NOT NULL,
    MEMBER_PW          VARCHAR2(110)    NOT NULL, 
    MEMBER_NAME        VARCHAR2(50)     NOT NULL,
    MEMBER_NICKNAME    VARCHAR2(50)     UNIQUE NOT NULL,
    MEMBER_GENDER      VARCHAR2(2)      CHECK(MEMBER_GENDER IN('M', 'F')),
    MEMBER_ADDR		   VARCHAR2(300)	,
    MEMBER_MONEY	   NUMBER			,
    MEMBER_BIRTH       VARCHAR2(50)     , 
    MEMBER_EMAIL       VARCHAR2(50)     UNIQUE,
    MEMBER_PHONE       VARCHAR2(30)     UNIQUE,
    MEMBER_ROLL        VARCHAR2(30)     NOT NULL, 
    MEMBER_DRIVEACC    VARCHAR2(2)      CHECK(MEMBER_DRIVEACC IN('Y', 'N')), 
    MEMBER_DELFLAG     VARCHAR2(2)      NOT NULL, CHECK(MEMBER_DELFLAG IN('Y', 'N')), 
    MEMBER_REGDATE     DATE             NOT NULL
 	
);



INSERT INTO DONCAR_MEMBER VALUES(MEMBER_NO.NEXTVAL, 'ADMIN', '1234', '진우현', '우햄', 'M', '경기도 군포시 산본동 @@@@ @@@@ @@@@', 800000, '1994-03-30',  'woohams@naver.com','010-1234-5678','ADMIN', 'Y', 'N', SYSDATE);
INSERT INTO DONCAR_MEMBER VALUES(MEMBER_NO.NEXTVAL, 'USER', '1234', '정신형', '정신차려이각박한세상속에서', 'M', '경기도 안산시 정왕동 @@@@ @@@@ @@@@', 5000000, '1988-011-20',  '이메일@naver.com','010-1234-5675','USER', 'Y', 'N', SYSDATE);
INSERT INTO DONCAR_MEMBER VALUES(MEMBER_NO.NEXTVAL, 'USER2', '1234', '김용범', '용범띠', 'M', '서울시 당산역 @@@@ @@@@ @@@@', 1500000,'1994-05-23', 'E메일@naver.com','010-1234-5679','USER', 'Y', 'N', SYSDATE);
INSERT INTO DONCAR_MEMBER VALUES(MEMBER_NO.NEXTVAL, 'USER3', '1234', '홍준화', '모자이크', 'M', '분당 @@@@ @@@@ @@@@', 9000000, '1993-06-20','EE메일@naver.com','010-1235-5679','USER', 'N', 'N', SYSDATE);
INSERT INTO DONCAR_MEMBER VALUES(MEMBER_NO.NEXTVAL, 'USER4', '1234', '고현우', '고우현', 'M', '건대 @@@@ @@@@ @@@@', 0,'1994-07-23','EEE메일@naver.com','010-1237-5679','USER', 'Y', 'Y', SYSDATE);

INSERT INTO DONCAR_MEMBER VALUES(MEMBER_NO.NEXTVAL, 'NULLTEST', '1234', '널', '널테스트', '', '', '','','','','USER', '', 'N', SYSDATE);

SELECT MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_NAME, MEMBER_NICKNAME, MEMBER_GENDER, MEMBER_BIRTH, MEMBER_ADDR, MEMBER_MONEY,MEMBER_EMAIL, MEMBER_PHONE, MEMBER_ROLL, MEMBER_DRIVEACC, MEMBER_DELFLAG, MEMBER_REGDATE
FROM DONCAR_MEMBER ORDER BY MEMBER_NO DESC;
--DELETE FROM DONCAR_MEMBER WHERE MEMBER_NO=3 AND MEMBER_NO=4;





--���
DROP SEQUENCE DONCAR_COMMENT_SEQ

CREATE SEQUENCE DONCAR_COMMENT_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE DONCAR_COMMENT

CREATE TABLE DONCAR_COMMENT
(
    COMMENT_NO          NUMBER            NOT NULL, 
    RENT_BOARD_NO       NUMBER            NOT NULL, 
    FREE_BOARD_NO       NUMBER            NOT NULL, 
    CAR_BOARD_NO        NUMBER            NOT NULL, 
    COMMENT_GROUP_NO    NUMBER            NOT NULL, 
    COMMENT_GROUP_SQ    NUMBER            NOT NULL, 
    COMMENT_TITLETAB    NUMBER            NOT NULL, 
    COMMENT_NICKNAME    VARCHAR2(30)      NOT NULL, 
    COMMENT_CONTENT     VARCHAR2(1000)    NOT NULL, 
    COMMENT_REGDATE     DATE              NOT NULL, 
    CONSTRAINT DONCAR_COMMENT_PK PRIMARY KEY (COMMENT_NO)
)

ALTER TABLE DONCAR_COMMENT ADD CONSTRAINT FK_DONCAR_COMMENT_RENT_BOARD_N FOREIGN KEY (RENT_BOARD_NO) REFERENCES  RENT_BOARD(RENT_BOARD_NO)


ALTER TABLE DONCAR_COMMENT
    ADD CONSTRAINT FK_DONCAR_COMMENT_FREE_BOARD_N FOREIGN KEY (FREE_BOARD_NO)
        REFERENCES  FREE_BOARD(FREE_BOARD_NO)


ALTER TABLE DONCAR_COMMENT
    ADD CONSTRAINT FK_DONCAR_COMMENT_CAR_BOARD_NO FOREIGN KEY (CAR_BOARD_NO)
        REFERENCES  CARPOOL_BOARD(CAR_BOARD_NO)


--�������װԽ���
DROP SEQUENCE DONCAR_NOTICE_SEQ

CREATE SEQUENCE DONCAR_NOTICE_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE DONCAR_NOTICE

CREATE TABLE DONCAR_NOTICE
(
    NOTICE_NO         NUMBER             NOT NULL, 
    NOTICE_TITLE      VARCHAR2(200)      NOT NULL, 
    NOTICE_WRITER     VARCHAR2(200)      NOT NULL, 
    NOTICE_CONTENT    VARCHAR2(4000)    NOT NULL, 
    NOTICE_REGDATE    DATE               NOT NULL, 
    NOTICE_DELFLAG    VARCHAR2(2)        NOT NULL, 
    CONSTRAINT DONCAR_NOTICE_PK PRIMARY KEY (NOTICE_NO)
)


--ä�����̺�
DROP SEQUENCE CHAT_BOARD_SEQ

CREATE SEQUENCE CHAT_BOARD_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE CHAT_BOARD

CREATE TABLE CHAT_BOARD
(
    CHAT_NO          NUMBER             NOT NULL, 
    USER1            VARCHAR2(50)       NOT NULL, 
    USER2            VARCHAR2(50)       NOT NULL, 
    CONTENT          VARCHAR2(4000)    NOT NULL, 
    CAR_BOARD_NO     NUMBER             NULL, 
    RENT_BOARD_NO    NUMBER             NULL, 
    CONSTRAINT CHAT_BOARD_PK PRIMARY KEY (CHAT_NO)
)

ALTER TABLE CHAT_BOARD
    ADD CONSTRAINT FK_CHAT_BOARD_CAR_BOARD_NO_CAR FOREIGN KEY (CAR_BOARD_NO)
        REFERENCES  CARPOOL_BOARD(CAR_BOARD_NO)


ALTER TABLE CHAT_BOARD
    ADD CONSTRAINT FK_CHAT_BOARD_RENT_BOARD_NO_RE FOREIGN KEY (RENT_BOARD_NO)
        REFERENCES  RENT_BOARD(RENT_BOARD_NO)


--��Ʈ�������̺�
DROP SEQUENCE RENT_ACC_SEQ

CREATE SEQUENCE RENT_ACC_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE RENT_ACC

CREATE TABLE RENT_ACC
(
    RENTACC_NO            NUMBER           NOT NULL, 
    RENTACC_BOARD_NO      NUMBER           NOT NULL, 
    RENTACC_START_DATE    DATE             NOT NULL, 
    RENTACC_END_DATE      DATE             NOT NULL, 
    RENTACC_ACC           VARCHAR2(2)      NOT NULL, 
    RENTACC_COMENT        VARCHAR2(200)    NULL, 
    RENTACC_NICKNAME      VARCHAR2(50)     NOT NULL, 
    CONSTRAINT RENT_ACC_PK PRIMARY KEY (RENTACC_NO)
)

ALTER TABLE RENT_ACC
    ADD CONSTRAINT FK_RENT_ACC_RENTACC_BOARD_NO_R FOREIGN KEY (RENTACC_BOARD_NO)
        REFERENCES  RENT_BOARD(RENT_BOARD_NO)

--īǮ�������̺�

DROP SEQUENCE CARPOOL_ACC_SEQ

CREATE SEQUENCE CARPOOL_ACC_SEQ
START WITH 1
INCREMENT BY 1;

DROP TABLE CARPOOL_ACC

CREATE TABLE CARPOOL_ACC
(
    CARACC_NO          NUMBER           NOT NULL, 
    CARACC_BOARD_NO    NUMBER           NOT NULL, 
    CARACC_XPOINT      VARCHAR2(200)    NOT NULL, 
    CARACC_YPOINT      VARCHAR2(200)    NOT NULL, 
    CARACC_COMENT      VARCHAR2(200)    NULL, 
    CARACC_NICKNAME    VARCHAR2(50)     NOT NULL, 
    CARACC_ACC         VARCHAR2(2)      NOT NULL, 
    CONSTRAINT CARPOOL_ACC_PK PRIMARY KEY (CARACC_NO)
)

ALTER TABLE CARPOOL_ACC
    ADD CONSTRAINT FK_CARPOOL_ACC_CARACC_BOARD_NO FOREIGN KEY (CARACC_BOARD_NO)
        REFERENCES  CARPOOL_BOARD(CAR_BOARD_NO)

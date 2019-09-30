DROP SEQUENCE CARPOOL_ACC_SEQ;
DROP TABLE CARPOOL_ACC;
DROP SEQUENCE RENT_ACC_SEQ;
DROP TABLE RENT_ACC;
DROP SEQUENCE CHAT_MESSAGE_SEQ;
DROP TABLE CHAT_MESSAGE;
DROP SEQUENCE CHAT_BOARD_SEQ;
DROP TABLE CHAT_BOARD;
DROP SEQUENCE DONCAR_NOTICE_SEQ;
DROP TABLE DONCAR_NOTICE;
DROP SEQUENCE COMMENT_NO_SEQ;
DROP SEQUENCE COMMENT_GROUP_NO_SEQ;
DROP TABLE DONCAR_COMMENT;
DROP SEQUENCE MEMBER_NO;
DROP TABLE DONCAR_MEMBER;
DROP SEQUENCE FREE_BOARD_SEQ;
DROP TABLE FREE_BOARD;
DROP SEQUENCE CARPOOL_BOARD_SEQ;
DROP TABLE CARPOOL_BOARD;
DROP TABLE RENT_BOARD;
DROP SEQUENCE RENT_BOARD_SEQ;

CREATE SEQUENCE RENT_BOARD_SEQ
START WITH 1
INCREMENT BY 1;


CREATE TABLE RENT_BOARD
(
 	RENT_BOARD_NO    NUMBER           PRIMARY KEY, 
    RENT_PROCESS     VARCHAR2(500)    NOT NULL, 
    RENT_TITLE       VARCHAR2(500)    NOT NULL, 
    RENT_WRITER      VARCHAR2(500)    NOT NULL, 
    RENT_CONTENT     VARCHAR2(4000)	  NOT NULL,
    RENT_COMPANY     VARCHAR2(500)    NOT NULL, 
    RENT_SIZE        VARCHAR2(500)    NOT NULL, 
    RENT_FUEL        VARCHAR2(500)    NOT NULL, 
    RENT_PRICE       NUMBER           NOT NULL, 
    RENT_LOCATION    VARCHAR2(500)    NOT NULL, 
    RENT_X_POINT	 VARCHAR2(500)	  NOT NULL,
    RENT_Y_POINT	 VARCHAR2(500)	  NOT NULL,
    RENT_REGDATE     DATE             NOT NULL, 
    RENT_IMG         VARCHAR2(500)    NOT NULL, 
    RENT_DELFLAG     VARCHAR2(2)      CHECK(RENT_DELFLAG IN ('Y','N')) NOT NULL,
    RENT_CARNO		 VARCHAR2(500)	  NOT NULL,
    RENT_CARNAME     VARCHAR2(500)    NOT NULL
);

--SELECT * FROM RENT_BOARD;


CREATE SEQUENCE CARPOOL_BOARD_SEQ
START WITH 1
INCREMENT BY 1;


CREATE TABLE CARPOOL_BOARD
(
    CAR_BOARD_NO          NUMBER            PRIMARY KEY, 
    CAR_BOARD_PROCESS     VARCHAR2(500)     NOT NULL, 
    CAR_BOARD_TITLE       VARCHAR2(500)     NOT NULL, 
    CAR_BOARD_WRITER      VARCHAR2(500)     NOT NULL, 
    CAR_BOARD_CONTENT     VARCHAR2(4000)    NOT NULL,
    CAR_BOARD_PRICE       NUMBER            NOT NULL,
    CAR_BOARD_STARTDATE	  DATE		NOT NULL,
    CAR_BOARD_STARTPOINT  VARCHAR2(500)     NOT NULL, 
    CAR_BOARD_ENDPOINT    VARCHAR2(500)     NOT NULL, 
    CAR_BOARD_X_POINT     VARCHAR2(500)     NOT NULL, 
    CAR_BOARD_Y_POINT     VARCHAR2(500)     NOT NULL, 
    CAR_BOARD_REGDATE     DATE              NOT NULL, 
    CAR_BOARD_DELFLAG     VARCHAR2(2)       CHECK(CAR_BOARD_DELFLAG IN('Y','N')) NOT NULL 
);

SELECT * FROM CARPOOL_BOARD;


CREATE SEQUENCE FREE_BOARD_SEQ
START WITH 1
INCREMENT BY 1;


CREATE TABLE FREE_BOARD
(
    FREE_BOARD_NO    NUMBER             PRIMARY KEY, 
    FREE_TITLE       VARCHAR2(500)      NOT NULL, 
    FREE_WRITER      VARCHAR2(500)      NOT NULL, 
    FREE_CONTENT     VARCHAR2(4000)     NOT NULL, 
    FREE_DELFLAG     VARCHAR2(2)        CHECK(FREE_DELFLAG IN('Y','N')) NOT NULL,
    FREE_REGDATE     DATE               NOT NULL
);

--SELECT * FROM FREE_BOARD;



CREATE SEQUENCE MEMBER_NO;

 
CREATE TABLE DONCAR_MEMBER
(
    MEMBER_NO          NUMBER           PRIMARY KEY,
    MEMBER_ID          VARCHAR2(500)    UNIQUE NOT NULL,
    MEMBER_PW          VARCHAR2(500)    NOT NULL, 
    MEMBER_NAME        VARCHAR2(500)    NOT NULL,
    MEMBER_NICKNAME    VARCHAR2(500)    UNIQUE NOT NULL,
    MEMBER_GENDER      VARCHAR2(2)      CHECK(MEMBER_GENDER IN('M', 'F')),
    MEMBER_ADDR		   VARCHAR2(500)	NULL,
    MEMBER_MONEY	   NUMBER			NULL,
    MEMBER_BIRTH       VARCHAR2(500)    NULL, 
    MEMBER_EMAIL       VARCHAR2(500)    UNIQUE,
    MEMBER_PHONE       VARCHAR2(500) 	UNIQUE,
    MEMBER_ROLL        VARCHAR2(500)    NOT NULL, 
    MEMBER_DRIVEACC    VARCHAR2(2)      CHECK(MEMBER_DRIVEACC IN('Y', 'N')), 
    MEMBER_DELFLAG     VARCHAR2(2)      NOT NULL CHECK(MEMBER_DELFLAG IN('Y', 'N')), 
    MEMBER_REGDATE     DATE             NOT NULL
);

SELECT * FROM DONCAR_MEMBER;

INSERT INTO DONCAR_MEMBER VALUES(MEMBER_NO.NEXTVAL, 'ADMIN', '1234', '관리자', '관리자', 'M', '주소', 800000, '1994-03-30',  'admin@admin.com','010-1234-5678','ADMIN', 'Y', 'N', SYSDATE);


		

CREATE SEQUENCE COMMENT_NO_SEQ
START WITH 1
INCREMENT BY 1;
CREATE SEQUENCE COMMENT_GROUP_NO_SEQ
START WITH 1
INCREMENT BY 1;

		
CREATE TABLE DONCAR_COMMENT
(
    COMMENT_NO          NUMBER            PRIMARY KEY, 
    COMMENT_GROUP_NO    NUMBER            NOT NULL, 
    COMMENT_GROUP_SQ    NUMBER            NOT NULL, 
    COMMENT_TITLETAB    NUMBER            NOT NULL, 
    COMMENT_NICKNAME    VARCHAR2(500)     NOT NULL, 
    COMMENT_CONTENT     VARCHAR2(1000)    NOT NULL, 
    RENT_BOARD_NO       NUMBER            NULL, 
    FREE_BOARD_NO       NUMBER            NULL, 
    CAR_BOARD_NO        NUMBER            NULL, 
    COMMENT_REGDATE     DATE              NOT NULL, 
    CONSTRAINT FK_DONCAR_COMMENT_RENT_BOARD_N FOREIGN KEY (RENT_BOARD_NO) REFERENCES RENT_BOARD(RENT_BOARD_NO),
    CONSTRAINT FK_DONCAR_COMMENT_FREE_BOARD_N FOREIGN KEY (FREE_BOARD_NO) REFERENCES FREE_BOARD(FREE_BOARD_NO),
    CONSTRAINT FK_DONCAR_COMMENT_CAR_BOARD_NO FOREIGN KEY (CAR_BOARD_NO)  REFERENCES CARPOOL_BOARD(CAR_BOARD_NO)
);

--SELECT * FROM DONCAR_COMMENT;



CREATE SEQUENCE DONCAR_NOTICE_SEQ
START WITH 1
INCREMENT BY 1;


CREATE TABLE DONCAR_NOTICE
(
    NOTICE_NO         NUMBER             PRIMARY KEY, 
    NOTICE_TITLE      VARCHAR2(500)      NOT NULL, 
    NOTICE_WRITER     VARCHAR2(500)      NOT NULL, 
    NOTICE_CONTENT    VARCHAR2(4000)   	 NOT NULL, 
    NOTICE_REGDATE    DATE               NOT NULL, 
    NOTICE_DELFLAG    VARCHAR2(2)     	 CHECK(NOTICE_DELFLAG IN('Y','N')) NOT NULL
);

--SELECT * FROM DONCAR_NOTICE;


CREATE SEQUENCE CHAT_BOARD_SEQ
START WITH 1
INCREMENT BY 1;


CREATE TABLE CHAT_BOARD
(
    CHAT_NO          NUMBER             PRIMARY KEY, 
    USER1            VARCHAR2(500)      NOT NULL, 
    USER2            VARCHAR2(500)      NOT NULL, 
    CONTENT          VARCHAR2(4000)     NOT NULL, 
    CAR_BOARD_NO     NUMBER             NULL, 
    RENT_BOARD_NO    NUMBER             NULL, 
    REGDATE 		 DATE				NOT NULL,
    CONSTRAINT FK_CHAT_BOARD_CAR_BOARD_NO_CAR FOREIGN KEY (CAR_BOARD_NO) REFERENCES  CARPOOL_BOARD(CAR_BOARD_NO),
    CONSTRAINT FK_CHAT_BOARD_RENT_BOARD_NO_RE FOREIGN KEY (RENT_BOARD_NO) REFERENCES  RENT_BOARD(RENT_BOARD_NO)
);
--SELECT * FROM CHAT_BOARD;


CREATE SEQUENCE CHAT_MESSAGE_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE CHAT_MESSAGE
(
	CHAT_MESSAGE_NO NUMBER			PRIMARY KEY,
	CHAT_NO			NUMBER			NOT NULL,
	SENDER			VARCHAR2(500)	NOT NULL,
	RECEIVER		VARCHAR2(500)	NOT NULL,
	CONTENT			VARCHAR2(4000)	NOT NULL,
	REGDATE			DATE			NOT NULL,
	CONSTRAINT FK_CHAT_MESSAGE_CHAT_NO FOREIGN KEY (CHAT_NO) REFERENCES CHAT_BOARD(CHAT_NO)
);
--SELECT * FROM CHAT_MESSAGE;





CREATE SEQUENCE RENT_ACC_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE RENT_ACC
(
    RENTACC_NO           NUMBER           PRIMARY KEY, 
    RENT_BOARD_NO      	 NUMBER           NOT NULL, 
    RENTACC_PROCESS    	 VARCHAR2(500)    NOT NULL, 
    RENTACC_START_DATE   DATE             NOT NULL, 
    RENTACC_END_DATE     DATE             NOT NULL, 
    RENTACC_ACC          VARCHAR2(2)      CHECK (RENTACC_ACC IN ('Y','N')) NOT NULL, 
    RENTACC_COMMENT      VARCHAR2(500)    NULL, 
    RENTACC_NICKNAME     VARCHAR2(500)    NOT NULL,
    CONSTRAINT FK_RENT_ACC_RENTACC_BOARD_NO_R FOREIGN KEY (RENT_BOARD_NO) REFERENCES  RENT_BOARD(RENT_BOARD_NO)
);

--SELECT * FROM RENT_ACC;


CREATE SEQUENCE CARPOOL_ACC_SEQ
START WITH 1
INCREMENT BY 1;


CREATE TABLE CARPOOL_ACC(
    CARACC_NO          NUMBER           PRIMARY KEY, 
    CAR_BOARD_NO       NUMBER           NOT NULL, 
    CARACC_PROCESS     VARCHAR2(500)    NOT NULL, 
    CARACC_XPOINT      VARCHAR2(500)    NOT NULL, 
    CARACC_YPOINT      VARCHAR2(500)    NOT NULL, 
    CARACC_COMENT      VARCHAR2(500)    NULL,
    CARACC_NICKNAME    VARCHAR2(500)    NOT NULL, 
    CARACC_ACC         VARCHAR2(2)      CHECK(CARACC_ACC IN('Y','N')) NOT NULL,
    CONSTRAINT FK_CARPOOL_ACC_CAR_BOARD_NO FOREIGN KEY (CAR_BOARD_NO) REFERENCES  CARPOOL_BOARD(CAR_BOARD_NO)
);
--SELECT * FROM CARPOOL_ACC;


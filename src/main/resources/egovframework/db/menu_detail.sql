CREATE TABLE MENU_DETAIL (MENU_IDX NUMERIC(10), MENU_NAME VARCHAR(100), URL VARCHAR(255), ORDER_NUM NUMERIC(10));

INSERT INTO MENU_DETAIL VALUES (0, '메인' , '/index.do' , 1);
INSERT INTO MENU_DETAIL VALUES (0, '로그인','/login.do' , 2);

INSERT INTO MENU_DETAIL VALUES (1, '메인' , '/index.do' , 1);
INSERT INTO MENU_DETAIL VALUES (1, 'ajax','/test.do' , 2);
INSERT INTO MENU_DETAIL VALUES (1, '게시판' ,'/user/board/list.do', 3);

INSERT INTO MENU_DETAIL VALUES (2, '메인' , '/index.do' , 1);
INSERT INTO MENU_DETAIL VALUES (2, '관리자 메뉴','/admin/index.do' , 2);
INSERT INTO MENU_DETAIL VALUES (2, '회원 목록' ,'/admin/user/list.do', 3);
INSERT INTO MENU_DETAIL VALUES (2, '게시판' ,'/admin/board/list.do', 4);

ALTER TABLE MENU_DETAIL ADD CONSTRAINT SYS_FK_95 FOREIGN KEY(MENU_IDX) REFERENCES MENU(MENU_IDX);
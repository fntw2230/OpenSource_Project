-- ---------------------------------------------------------------
-- ȸ�� ���̺�
CREATE TABLE MEMBER (
    MEMID NVARCHAR2( 10 ) NOT NULL  PRIMARY KEY,
    NICKNAME NVARCHAR2( 10 ) NOT NULL,
    BIRTH NVARCHAR2( 20 ) NOT NULL,
    GENDER NVARCHAR2( 5 ) NOT NULL,
    EMAIL NVARCHAR2( 20 ) NOT NULL
);

-- ȸ�� ���̺� �� ����
INSERT INTO MEMBER VALUES('rlfehd12', 'gildong', '1974-09-05', '��', 'gildong@naver.com'); 
INSERT INTO MEMBER VALUES('dudtn00', 'zero', '1998-07-04', '��', 'dndn@gmail.com');
INSERT INTO MEMBER VALUES('dbfl5454', 'yuri11', '1996-03-28', '��', 'abc@naver.com');
INSERT INTO MEMBER VALUES('ooooo2', 'o2', '1990-01-16', '��', 'h2o@naver.com');
INSERT INTO MEMBER VALUES('qq1dd', 'ase2', '1987-09-18', '��', 'dmm@gmail.com');

-- ---------------------------------------------------------------
-- ��ȭ ���̺�
CREATE TABLE MOVIE (
    MID NUMBER(5) NOT NULL PRIMARY KEY,
    MNAME NVARCHAR2( 20 ) NOT NULL,
    OPENING NVARCHAR2( 20 ) NOT NULL,
    RUNTIME NVARCHAR2( 10 ) NOT NULL,
    COUNTARY NVARCHAR2( 15 ) NOT NULL,
    GENRE NVARCHAR2( 10 ) NOT NULL
);

-- ��ȭ ���̺� �� ����
INSERT INTO MOVIE VALUES (0001, '�����', '2019�� 5�� 30��', '132��', '�ѱ�', '�� �ڹ̵�'); 
INSERT INTO MOVIE VALUES (0002, '�ܿ�ձ� 2', '2019�� 11�� 21��', '103��', '�̱�', '�ִϸ��̼�'); 
INSERT INTO MOVIE VALUES (0003, '���� ġ������ ���Ҹ�', '2002�� 6�� 28��', '126��', '�Ϻ�', '�ִϸ��̼�'); 
INSERT INTO MOVIE VALUES (0004, '��������', '2013�� 8�� 1��', '126��', '�ѱ�', 'SF');
INSERT INTO MOVIE VALUES (0005, '�μ���', '2010�� 7�� 21��', '148��', '�̱�', 'SF'); 
INSERT INTO MOVIE VALUES (0006, '��-E', '2008�� 8�� 6��', '100��', '�̱�', '�ִϸ��̼�');
INSERT INTO MOVIE VALUES (0007, '��', '2009�� 7�� 29��', '101��', '�̱�', '�ִϸ��̼�'); 
INSERT INTO MOVIE VALUES (0008, '��ġ', '2018�� 8�� 29��', '101��', '�̱�', '���');
INSERT INTO MOVIE VALUES (0009, '�� ����', '2011�� 8��', '170��', '�ε�', '�ڹ̵�'); 
INSERT INTO MOVIE VALUES (0010, '�ƹ�Ÿ', '2009�� 12�� 17��', '162��', '�̱�', 'SF');


-- ---------------------------------------------------------------
-- ���� ���̺�
CREATE TABLE REVIEW (
    RENO NUMBER( 5 ) NOT NULL,
    MID NUMBER( 5 ) NOT NULL,
    RE_NAME NVARCHAR2( 30 ) NOT NULL,
    RE_CONTENT NVARCHAR2( 200 ) NOT NULL,
    MEMID NVARCHAR2( 10 ),
     FOREIGN KEY(MEMID) REFERENCES MEMBER(MEMID),
     PRIMARY KEY (RENO, MID)
);

-- ���� ���̺� ����
INSERT INTO REVIEW VALUES (0001, 0001, '��� ����Ÿ�� �ѳ����, ������ ���������� ��ȭ', '����ȣ ������ ����޴� ���� ū ������ ''��Ÿ������ ����''�̶� ���̴�. �������� ��̿� ������ �ϼ��� ��� A������ �����ϴ� �帣 ��ȭ �����̶��, �Ұ����� �������� �̸� ������ �ϴ� ������ �ٷ� ����ȣ��. ���ڰ� ȣ���� ��ȭ�� �� ��ճĴ� ������ ����ϱ� ������ �༮���� ���� �ִ�. ������ <�����>�� �����ϰ� ''������ ��մ�!!!''��� ���� �� �ִ�. ', 'ooooo2');
INSERT INTO REVIEW VALUES (0002, 0001, '�ѱ���ȭ��� ���帣��, ����ȣ ��ȭ�� ���̻��ԡ�', '<�����>������ ���ѱ������̶�� �Ͱ� ���ѱ������̶�� ���� �и��Ǿ��ִ�. ���⼭ ���ѱ������̶�� ���� �츮�� ��ȸ������ ���� �� �ִ� ������ �ٰ��� ���� ����� ���Ѵ�. ���� ��ҿ� ������ ���� ���Ҵٸ�, �ܱ����̶� ���� �����ϰ� ������ �� �ִ� ǥ������ �����̴�. ', 'dbfl5454');
INSERT INTO REVIEW VALUES (0003, 0003, '����� ���� ���ܳ��� ���� ã�Ƴ��� ��', '��������, �� ��ǰ�� ���������� �������� �� ���� �ִ�. ���ٹٴ� �ں����� ��ȸ�� �߰� �������� �ȴ�. �ӿ���� ����� �ϰ�, ���ѷ�Ÿ���Ƶ���� ����� �ϴ� ���� �Ѵ�. ���ѷ�Ÿ���ƴ� �̸��� ���ѱ��, ����� no.00001���� �����ȴ�. �� ü�迡���� ���� ����ĥ ���� ���� ���δ�.', 'ooooo2');
INSERT INTO REVIEW VALUES (0004, 0008, '����ũž �ʸ��� ���ɼ��� �Ѱ�', '<��ġ>�� ��ΰ� SNS�� ������ �ְ�, �� ���� �˻��� ���� ���濡 ���� ����� ������ �˾Ƴ� �� �ִ� �ô��̱⿡ ������ �̾߱��Ӱ� ���ÿ�,  ����ũž �ʸ��� �帣��ȭ ������ ��� ��ȭ�س� �� �ִ���, �� ���ư� ����� ������ ���ɼ��� ������ ������ ������ ���� ������ ���� ������ �̲�� �ѷ��� �����̴�.', 'dudtn00');
INSERT INTO REVIEW VALUES (0005, 0010, '��û�� �ð�ȿ���� �������� ��ȭ', '������� ��û�� �ð�ȿ���� �ڶ��ϴ� ��ǻ�ͱ׷��Ȱ� ����� �����踦 ���� �ߴ� ��ȭ�̴�. ������ ���� �ð�ȿ��,��ǻ�ͱ׷���,�׼�,���ⰰ�� �鿡���� ���� Ī�����ְ� �Ͱ� �� ������ٰ� ����������, ������ �װŹۿ� ���� �������� ����.', 'rlfehd12');
INSERT INTO REVIEW VALUES (0006, 0007, '��Ű���� ������ �ٷ�  �÷���  �ִϸ��̼ǿ��� �س���', '�Ȼ簡 ��� ���� ��ǰ�� ������ ���� �ָ��ؾ� �Ѵ�. <��-e>�� �ʹ� 40�а� ���� �� ���� �ʹ� 5���� ���� �Ƹ����. Ư�� ��ü���� ���� �� Į�� ���� �ƴ� �ڵ� ������(?)�� ���� �� ������ ���� ���ڱ��� ����� ����� �� ��ü�� �ÿ� ����. �� ������ε� ����� �������� �˰� �Ǵϱ�. �� ����� �λ� ���.', 'ooooo2');
INSERT INTO REVIEW VALUES (0007, 0002, '���д� �ƴ����� �����̶� �� ���� ���� ����', '����� �ȳ��� �ڸžִ� ������ ��ȿ�� �̾߱��̸�, �ƹ������Լ� �Ƶ�� ������ ������ ��µǴ� Ŭ����(���� ���� ����δٴ� ��¡)�� ��ӴϿ��Լ� ���� ��µǴ� ������ ��ȭ�� ����, �����̶�� ������ �ִ� �ð��� �谨, ���۸�ŭ ĳġ���� ������ ��� ��ȭ�� ���� ������ ��ſ� ������ <�ܿ�ձ� 2>�� �����̴�. ', 'dbfl5454');
INSERT INTO REVIEW VALUES (0008, 0001, '�̷��� ��հ� ��̷ο �������̱���� �� ����ȣ ����', '<�����>�� ����� ''�ٸ�'' ��ȭ��. �� ������ �ű�� ������ ��ȭ��� �������� �����ǰ� ����ȭ �Ǿ��� �帣���� ��Ŀ� �Z�ſ��� �������� �ð��� ������ �ٸ� �ð����� �ȳ��� �� �ִ� ��ȭ��. �װ͸����� <�����>�� ��ȭ�� ����� ����� �����.', 'qq1dd');



-- ---------------------------------------------------------------
-- ���� ���̺�
CREATE TABLE DIRECTOR (
    DID NUMBER( 5 ) NOT NULL PRIMARY KEY,
    DNAME NVARCHAR2( 10 ) NOT NULL,
    COUNTARY NVARCHAR2( 15 )  NOT NULL,
    BIRTH NVARCHAR2( 20 ) NOT NULL
);

-- ���� ���̺� ����
INSERT INTO DIRECTOR VALUES (0001, '����ȣ', '�ѱ�', '1969�� 9�� 14��');
INSERT INTO DIRECTOR VALUES (0002, 'ũ���� ��', '�̱�', '1958�� 2�� 24��'); 
INSERT INTO DIRECTOR VALUES (0003, '�̾���Ű �Ͼ߿�', '�Ϻ�', '1941�� 1�� 5��');
INSERT INTO DIRECTOR VALUES (0004, 'ũ�������� ���', '����', '1970�� 7�� 30��');
INSERT INTO DIRECTOR VALUES (0005, '�ص�� ����ư', '�̱�', '1965�� 12�� 3��');
INSERT INTO DIRECTOR VALUES (0006, '��Ʈ ����', '�̱�', '1968�� 10�� 9��');
INSERT INTO DIRECTOR VALUES (0007, '�ƴϽ� ����Ƽ', '�̱�', '1991��');
INSERT INTO DIRECTOR VALUES (0008, '�������� �����', '�ε�', '1962�� 11�� 20��');
INSERT INTO DIRECTOR VALUES (0009, '���ӽ� ī�޷�', 'ĳ����', '1954�� 8�� 16��');
INSERT INTO DIRECTOR VALUES (0010, '������', '�ѱ�', '1963�� 8�� 23��');

-- ---------------------------------------------------------------
-- ��� ���̺�
CREATE TABLE ACTOR (
    AID NUMBER( 5 ) NOT NULL PRIMARY KEY,
    ANAME NVARCHAR2( 10 ) NOT NULL,
    COUNTARY NVARCHAR2( 15 ) NOT NULL,
    BIRTH NVARCHAR2( 20 ) NOT NULL
);

-- ��� ���̺� ����
INSERT INTO ACTOR VALUES (0001, '�۰�ȣ', '�ѱ�', '1967�� 1�� 17��');
INSERT INTO ACTOR VALUES (0002, '��ī������', '�̱�', '1974�� 11�� 11��');
INSERT INTO ACTOR VALUES (0003, '��Ʃ ��Ŀ����', '�̱�', '1969�� 11�� 4��');
INSERT INTO ACTOR VALUES (0004, '�� ��ũ��', '�̱�', '1956�� 7�� 9��');
INSERT INTO ACTOR VALUES (0005, '���ϴ�', '�ѱ�', '1983�� 3�� 2��');
INSERT INTO ACTOR VALUES (0006, '������', '�ѱ�', '1981�� 2�� 10��');
INSERT INTO ACTOR VALUES (0007, 'ũ���� ���ݽ�', '�̱�', '1981�� 6�� 13��');

-- ---------------------------------------------------------------
-- ��ȭ�� ���̺�
CREATE TABLE FESTIVAL (
    FNO NUMBER( 4 ) NOT NULL PRIMARY KEY,
    FNAME NVARCHAR2( 20 ) NOT NULL
);

-- ��ȭ�� ���̺� ����
INSERT INTO FESTIVAL VALUES (0001, 'ĭ ��ȭ��');
INSERT INTO FESTIVAL VALUES (0002, '������ ��ȭ��');
INSERT INTO FESTIVAL VALUES (0003, '��ī���� ��');
INSERT INTO FESTIVAL VALUES (0004, '�ް��');
INSERT INTO FESTIVAL VALUES (0005, '���۷κ��');
INSERT INTO FESTIVAL VALUES (0006, '��󿹼����');
INSERT INTO FESTIVAL VALUES (0007, '���� ��ȭ��');

-- ---------------------------------------------------------------
-- ���� ���̺�
CREATE TABLE PRIME (
    PNO NUMBER( 3 ) NOT NULL ,
    FNO NUMBER( 3 ) NOT NULL ,
    DID NUMBER( 5 ),
    AW_MOVIE NVARCHAR2( 20 ) NOT NULL ,
    AWARD NVARCHAR2( 20 ) NOT NULL,
        PRIMARY KEY (PNO , FNO ),
        FOREIGN KEY(DID) REFERENCES DIRECTOR(DID)
);

-- ���� ���̺� ����
INSERT INTO PRIME VALUES (0001, 0001, 0001, '�����', 'Ȳ��������');
INSERT INTO PRIME VALUES (0002, 0007, 0007, '��ġ', '������');
INSERT INTO PRIME VALUES (0003, 0003, 0003, '���� ġ������ ���Ҹ�', '����ִϸ��̼ǻ�');
INSERT INTO PRIME VALUES (0004, 0002, 0003, '���� ġ������ ���Ҹ�', 'Ȳ�ݰ���');
INSERT INTO PRIME VALUES (0005, 0003, 0005, '��-E', '����ִϸ��̼ǻ�');
INSERT INTO PRIME VALUES (0006, 0004, 0005, '��-E', '�ֿ�� ���ƽ ���������̼�');
INSERT INTO PRIME VALUES (0007, 0004, 0004, '�μ���', '�ֿ�� ���ƽ ���������̼�');
INSERT INTO PRIME VALUES (0008, 0006, 0001, '��������', '��ȭ�ι� ������');

-- ============================================
-- ī�װ� ���̺�
CREATE TABLE CATEGORY (
    CATEGORY_ID NUMBER( 10 ) NOT NULL PRIMARY KEY,
    CATEGORY_NAME NVARCHAR2( 10 ) NOT NULL
);

-- ī�װ� ���̺� ����
INSERT INTO CATEGORY VALUES (1, 'DB����');
INSERT INTO CATEGORY VALUES (2, '����');
INSERT INTO CATEGORY VALUES (3, '�̿�����');
INSERT INTO CATEGORY VALUES (4, '�ҹ������ �Ű�');

-- ============================================
-- �μ� ���̺�
CREATE TABLE DEPARTMENT (
    DEPTNAME NVARCHAR2( 10 ) NOT NULL PRIMARY KEY,
    CATEGORY_ID NUMBER( 10 ) NOT NULL,
            FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID)
);

-- �μ� ���̺� ����
INSERT INTO DEPARTMENT VALUES ('��ȹ��', 1);
INSERT INTO DEPARTMENT VALUES ('���', 2);
INSERT INTO DEPARTMENT VALUES ('������', 3);
INSERT INTO DEPARTMENT VALUES ('������', 4);


-- ============================================

-- ������ ���̺�
CREATE TABLE ADMIN (
    ADMIN_ID NUMBER( 5 ) NOT NULL ,
    ADMIN_NAME NVARCHAR2( 10 ) NOT NULL ,
    DEPT NVARCHAR2( 10 ) NOT NULL,
        FOREIGN KEY(DEPT) REFERENCES DEPARTMENT(DEPTNAME) ON DELETE SET NULL
);

-- ������ ���̺� ����
INSERT INTO ADMIN VALUES (5642, '��ö��', '��ȹ��');
INSERT INTO ADMIN VALUES (5412, '����ö', '��ȹ��');
INSERT INTO ADMIN VALUES (9741, '��û��', '������');
INSERT INTO ADMIN VALUES (2134, '����ô', '������');
INSERT INTO ADMIN VALUES (5482, '������', '���');

-- ============================================
-- ī�װ� ����� ���̺�
CREATE TABLE CATEGORY_RESP (
    ADMIN_ID NUMBER( 5 ),
    CATEGORY_ID NUMBER( 10 ),
    primary key(ADMIN_ID, CATEGORY_ID),
        FOREIGN KEY(ADMIN_ID, CATEGORY_ID) REFERENCES CATEGORY_RESP(ADMIN_ID, CATEGORY_ID) ON DELETE SET NULL
);

-- ī�װ� ����� ���̺� ����
INSERT INTO CATEGORY_RESP VALUES (5642, 1);
INSERT INTO CATEGORY_RESP VALUES (5412, 1);
INSERT INTO CATEGORY_RESP VALUES (9741, 3);
INSERT INTO CATEGORY_RESP VALUES (2134, 4);
INSERT INTO CATEGORY_RESP VALUES (5482, 2);


-- ============================================
-- DB�Խ��� ���̺�
CREATE TABLE DB_NOTICEBOARD (
    DBNO NUMBER( 5 ) NOT NULL,
    DBNAME NVARCHAR2( 50 ) NOT NULL ,
    DBCONTENT NVARCHAR2( 200 ) NOT NULL ,
    MEMID NVARCHAR2( 10 ), 
    ADMIN_ID NUMBER( 5 ),
     CATEGORY_ID NUMBER( 10 ),
         primary key(dbno),
         FOREIGN KEY(ADMIN_ID,CATEGORY_ID) REFERENCES CATEGORY_RESP(ADMIN_ID, CATEGORY_ID),
         FOREIGN KEY(MEMID) REFERENCES MEMBER(MEMID) ON DELETE CASCADE
);

-- DB�Խ��� �� ����
INSERT INTO DB_NOTICEBOARD VALUES (0001, '��ȭ �� �־��ּ���!!', '�͹̳�, ĳġ �� ���� �� ĵ, �ظ����� �ø��� ���� �� ���̷��� ������...','dudtn00',5412,1);
INSERT INTO DB_NOTICEBOARD VALUES (0002, '���� ��ȭ ���ε� ��Ź�帳�ϴ�.', '���ض� ��', 'ooooo2',  5642,1);
INSERT INTO DB_NOTICEBOARD VALUES (0003, '��󸶴� ���ε� �ȵǳ���?', '��� �ô밡 ��� �ô��ε� ��ȭ�� �����մϱ�? ��󸶵� ���ּ���', 'rlfehd12',  9741,3);
INSERT INTO DB_NOTICEBOARD VALUES (0004, '���� �׷� �ϰ� �ٴϴ� �̻��� ��.', '�˹��ΰ��� ��õ �׷� �ϰ� �ٴϴ� ����� ���ҽ��ϴ�.', 'dudtn00',2134,4);


-- ============================================��� ����

-- �� ���̺�
CREATE TABLE ASSESSMENT (
    ASSNAME NVARCHAR2( 20 ) NOT NULL primary key,
    MEMID NVARCHAR2( 10 ),
    RENO NUMBER( 5 ),
    content NVARCHAR2( 50 ) NOT NULL ,
    RECOMMEND NUMBER( 1 ) NULL
);

-- �� ���̺� ����
INSERT INTO ASSESSMENT VALUES ('���丮�ڸ��� ����', 'dudtn00', 0007, '������, ��̵� �����Ӵ��� ���ǵ� 1�� ���� �������.', 5);
INSERT INTO ASSESSMENT VALUES ('������ ������ �׾��� ���', 'rlfehd12', 0002, '<�����>�� �� ������� �帣��ȭ�� Ȱ������ �����ϰ� ���� ���̴�.', 2);
INSERT INTO ASSESSMENT VALUES ('���������� �и��ϳ� 12���� ����', 'ooooo2', 0005, '����� �������� ���� �߿��� ���� ����� Ȱ��', 2);
INSERT INTO ASSESSMENT VALUES ('�������� �����ϴ� ����', 'qq1dd', 0004, '������ ���������� ������ ������ �о�����', 5);

-- ============================================
-- ���� ���̺�
CREATE TABLE DIRECTION (
    MID NUMBER( 5 ),
    DID NUMBER( 5 ),
        FOREIGN KEY(MID) REFERENCES MOVIE(MID),
        FOREIGN KEY(DID) REFERENCES DIRECTOR(DID)
);
-- ���� ���̺� ����
INSERT INTO DIRECTION VALUES (0001, 0001);
INSERT INTO DIRECTION VALUES (0002, 0002);
INSERT INTO DIRECTION VALUES (0003, 0003);
INSERT INTO DIRECTION VALUES (0004, 0001);
INSERT INTO DIRECTION VALUES (0005, 0004);
INSERT INTO DIRECTION VALUES (0006, 0005);
INSERT INTO DIRECTION VALUES (0007, 0006);
INSERT INTO DIRECTION VALUES (0008, 0007);



-- ============================================
-- �⿬ ���̺�
CREATE TABLE APPEAR (
    MID NUMBER( 5 ),
    AID NUMBER( 5 ),
        FOREIGN KEY(MID) REFERENCES MOVIE(MID),
        FOREIGN KEY(AID) REFERENCES ACTOR(AID)
);

-- �⿬ ���̺� ����
INSERT INTO APPEAR VALUES (0001, 0001);
INSERT INTO APPEAR VALUES (0001, 0006);
INSERT INTO APPEAR VALUES (0004, 0001);
INSERT INTO APPEAR VALUES (0004, 0007);

-- ============================================
-- ���� ���̺�
CREATE TABLE PROVIDE (
    MID NUMBER( 5 ),
    MEMID NVARCHAR2( 10 ) ,
    RENO NUMBER( 5 ),
         FOREIGN KEY(MEMID) REFERENCES MEMBER(MEMID),
         FOREIGN KEY(RENO, MID) REFERENCES REVIEW(RENO, MID)
);

-- ���� ���̺� ����
INSERT INTO PROVIDE VALUES (0001, 'ooooo2'  ,0001);
INSERT INTO PROVIDE VALUES (0001, 'dbfl5454' ,0002);
INSERT INTO PROVIDE VALUES (0003, 'ooooo2'  ,0003);
INSERT INTO PROVIDE VALUES (0008, 'dudtn00'  ,0004);
INSERT INTO PROVIDE VALUES (0010, 'rlfehd12'  ,0005);
INSERT INTO PROVIDE VALUES (0007, 'ooooo2'  ,0006);
INSERT INTO PROVIDE VALUES (0002, 'dbfl5454'  ,0007);
INSERT INTO PROVIDE VALUES (0001, 'qq1dd'  ,0008);


-- ============================================
-- ���� �ʸ�׷���
CREATE TABLE DIRECTOR_FILMOGRAPHY (
    DID NUMBER( 5 ),
    FILMOGRAPHY NVARCHAR2( 20 ) NOT NULL,
        FOREIGN KEY(DID) REFERENCES DIRECTOR(DID)
);

-- ���� �ʸ�׷��ǰ� ����
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0001, '�����');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0001, '��������');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0001, '����');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0002, '�ܿ�ձ�');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0002, '�ܿ�ձ�2');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0003, '���� ġ������ ���Ҹ�');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0004, '�μ���');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0004, '���ͽ��ڶ�');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0005, '��-E');

-- ============================================
-- ��� �ʸ�׷���
CREATE TABLE ACTOR_FILMOGRAPHY (
    AID NUMBER( 5 ),
    FILMOGRAPHY NVARCHAR2( 20 ) NOT NULL,
        FOREIGN KEY(AID) REFERENCES ACTOR(AID)
);

-- ��� �ʸ�׷��ǰ� ����
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0001, '�����');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0001, '��������');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0001, '����');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0002, '�μ���');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0002, '������ ������');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0002, 'ĳġ �� ���� �� ĵ');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0006, '�����');
INSERT INTO DIRECTOR_FILMOGRAPHY VALUES (0007, '��������');
USE EDU --[EDU] 데이터베이스 사용

--[회원테이블] 생성
CREATE TABLE [회원테이블] (
[회원번호] VARCHAR(20) PRIMARY KEY,
[이름] VARCHAR(10),
[성별] VARCHAR(2),
[나이] INT,
[가입금액] MONEY,
[가입일자] DATE NOT NULL,
[수신동의] BIT
)


/* INSERT */

--[회원테이블]에 데이터 삽입
INSERT INTO  [회원테이블]  VALUES ('A10001', '모원서', '남', 33, 100000, '2020-01-01', 1);
INSERT INTO  [회원테이블]  VALUES ('A10002', '김영화', '여', 29, 200000, '2020-01-02', 0);
INSERT INTO  [회원테이블]  VALUES ('A10003', '홍길동', '남', 29, 300000, '2020-01-03', NULL);

--제약 조건(PRIMARY KEY, NOT NULL) 위반 시 명령어 실행 X
INSERT INTO  [회원테이블]  VALUES ('A10001', '홍길동', '남', 29, 300000, '2020-01-03', NULL);
INSERT INTO  [회원테이블]  VALUES ('A10005', '홍길동', '남', 29, 300000, NULL, 1);


/* SELECT */

--[회원테이블]에 모든 컬럼 조회
SELECT  * --모든 컬럼
  FROM  [회원테이블]

--[회원테이블]에 특정 컬럼명 조회 및 임시로 컬럼명 변경
SELECT  [회원번호]
		,[이름] AS [성명] --AS는 생략 가능
		,[가입일자]
		,[나이]
  FROM  [회원테이블]


/* UPDATE */

--모든 행을 조건 없이, [나이] 30 으로 수정하기 
UPDATE  [회원테이블]
   SET  [나이] = 30

--[회원테이블] 조회 및 수정 확인
SELECT  * --모든 컬럼
  FROM  [회원테이블]

--[회원번호]가 'A10001'인 [나이] 34 로 변경하기 
UPDATE  [회원테이블]
   SET  [나이] = 34
 WHERE  [회원번호] = 'A10001'

--[회원테이블] 조회 및 변경 확인
SELECT  * --모든 컬럼
  FROM  [회원테이블]


/* DELETE */

--[회원테이블] 모든 행 데이터 삭제 (실제로 실행 X)
DELETE 
  FROM  [회원테이블]

--[회원테이블] 특정 조건 데이터 삭제
DELETE  
  FROM  [회원테이블]
 WHERE  [회원번호] = 'A10001'

--[회원테이블] 'A10001' 행 삭제 확인
SELECT  * --모든 컬럼
  FROM  [회원테이블]
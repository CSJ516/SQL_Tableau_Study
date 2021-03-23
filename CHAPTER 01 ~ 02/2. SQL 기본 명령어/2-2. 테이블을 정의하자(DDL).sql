USE EDU --[EDU] 데이터베이스 사용


/* CREATE */

--[회원테이블] 생성 - [EDU] 데이터베이스의 테이블에서 확인
CREATE TABLE [회원테이블] (
[회원번호] VARCHAR(20) PRIMARY KEY,
[이름] VARCHAR(10),
[성별] VARCHAR(2),
[나이] INT,
[가입금액] MONEY,
[가입일자] DATE NOT NULL,
[수신동의] BIT
)
--PRIMARY KEY와 NOT NULL은 데이터 제약 조건


/* ALTER */

--[회원테이블]에 [몸무게] 컬럼 추가, 데이터 형식은 REAL
ALTER TABLE [회원테이블] ADD [몸무게] REAL

--열을 추가할 때 반드시 데이터 형식 지정
--REAL은 숫자형으로, FLOAT(24)와 동일

--[회원테이블]에 [몸무게] 컬럼 데이터 형식 INT로 변경
ALTER TABLE [회원테이블] ALTER COLUMN [몸무게] INT


/* RENAME */

--[회원테이블]에 [몸무게] 컬럼 [몸무게(kg)]로 변경
SP_RENAME '[회원테이블].[몸무게]', '몸무게(kg)'

--[회원테이블] 테이블명 [MEMBER]로 변경
SP_RENAME '[회원테이블]', 'MEMBER'


/* TRUNCATE, DROP */

--[MEMBER] 테이블 모든 행 데이터 삭제
TRUNCATE TABLE [MEMBER]

--[MEMBER] 테이블 삭제
DROP TABLE [MEMBER]
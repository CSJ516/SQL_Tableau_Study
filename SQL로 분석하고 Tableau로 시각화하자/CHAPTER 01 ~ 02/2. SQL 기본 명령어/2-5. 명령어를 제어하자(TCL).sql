
--Transaction: DML 명령문들을 하나의 그룹으로 처리하는 논리적인 작업 단위
--그룹 내 하나의 명령어라도 에러가 발생한다면, 모든 DML 명령어 취소

USE EDU --[EDU] 데이터베이스 사용


/* COMMIT */

--BEGIN TRAN -> DELETE -> COMMIT
--COMMIT 명령어 실행 시 데이터가 복구되지 않으므로, 나머지 실습을 위해 실행 X

BEGIN TRAN --TCL 명령어를 시작하기 위한 선언 명령어
DELETE  FROM  [회원테이블] --[회원테이블] 모든 행 데이터 삭제
COMMIT --모든 행 데이터 삭제 실행


/* ROLLBACK */

--BEGIN TRAN -> DELETE -> ROLLBACK
--번호 순서대로 드래그하여 실행

USE EDU --1. [EDU] 데이터베이스 사용
BEGIN TRAN --2. TCL 시작
SELECT * FROM  [회원테이블] --3. [회원테이블] 모든 행 데이터 삭제 전
DELETE  FROM  [회원테이블] --4. [회원테이블] 모든 행 데이터 삭제
SELECT * FROM  [회원테이블] --5. [회원테이블] 모든 행 데이터 삭제 후
ROLLBACK --6. [회원테이블] 모든 행 데이터 삭제 취소
SELECT * FROM  [회원테이블] --7. [회원테이블] 모든 행 데이터 삭제 취소 후


/* SAVEPOINT */

--번호 순서대로 드래그하여 실행

USE EDU --1. [EDU] 데이터베이스 사용
BEGIN TRAN --2. TCL 시작

SAVE TRAN S1; --3. SAVEPOINT.1: [회원테이블]에 'A10001' 회원 데이터 삽입(INSERT)
INSERT INTO  [회원테이블]  VALUES ('A10001', '모원서', '남', 33, 100000, '2020-01-01', 1);
SAVE TRAN S2; --4. SAVEPOINT.2: 'A10001' 나이 34로 수정(UPDATE)
UPDATE  [회원테이블]  SET  [나이] = 34 WHERE  [회원번호] = 'A10001'
SAVE TRAN S3; --5. SAVEPOINT.3: [회원테이블]에 'A10003' 회원 데이터 삭제(DELETE)
DELETE FROM [회원테이블] WHERE  [회원번호] = 'A10003'

SELECT * FROM  [회원테이블] --3~5번 실행 확인

ROLLBACK TRAN S3; --6. S3 지정 취소
SELECT * FROM  [회원테이블] --확인
ROLLBACK TRAN S2; --7. S2 지정 취소
SELECT * FROM  [회원테이블] --확인
ROLLBACK TRAN S1; --8. S1 지정 취소
SELECT * FROM  [회원테이블] --확인

SELECT * FROM  [회원테이블] --6~8번 실행 확인
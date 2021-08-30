USE EDU --[EDU] 데이터베이스 사용


/* Order 테이블 가져오기 */

--EDU 우클릭 - 태스크 - 플랫 파일 가져오기 - 파일 선택 후 데이터 형식, 기본키, Null 여부 지정


/* INNER JOIN */

--INNER JOIN: 공통된 요소들을 통해 결합하는 조인 방식
--ON: 두 테이블 간의 연결 조건을 지정하는 명령어
--대부분 PK 및 FK를 연결 조건으로 지정

SELECT  *
  FROM  [Member] AS A --[Member] 테이블 별칭 A
 INNER
  JOIN  [Order] AS B --[Order] 테이블 별칭 B
    ON  A.mem_no = B.mem_no --공통 값(mem_no) 결합


/* OUTER JOIN */

--OUTER JOIN: 공통으로 매칭되지 않는 요소들도 결합하는 조인 방식
--LEFT JOIN: 왼쪽 테이블 기준 데이터 조회
--매칭되지 않는 데이터는 모두 NULL 값으로 조회

SELECT  *
  FROM  [Member] A
  LEFT
  JOIN  [Order] B
    ON  A.mem_no = B.mem_no

--RIGHT JOIN: 오른쪽 테이블 기준 데이터 조회
--해당 예시의 경우, 비회원 주문이 불가능하다고 가정했기 때문에 NULL 값 X

SELECT  *
  FROM  [Member] A
 RIGHT
  JOIN  [Order] B
    ON  A.mem_no = B.mem_no

--FULL JOIN: 양쪽 테이블 기준 데이터 조회

SELECT  *
  FROM  [Member] A
  FULL
  JOIN  [Order] B
    ON  A.mem_no = B.mem_no


/* CROSS, SELF JOIN */

--CROSS JOIN: 두 테이블의 행을 결합한 데이터 조회
--mem_no가 양쪽에 있으므로, A.mem_no 또는 B.mem_no로 명시

SELECT  *
  FROM  [Member] A
  CROSS
  JOIN  [Order] B 
 WHERE  A.mem_no = '1000001'
 
--SELF JOIN: 한 테이블을 두 테이블(A,B)로 하여 행을 결합한 데이터 조회

SELECT  *
  FROM  [Member] A, [Member] B
 WHERE  A.mem_no = '1000001'
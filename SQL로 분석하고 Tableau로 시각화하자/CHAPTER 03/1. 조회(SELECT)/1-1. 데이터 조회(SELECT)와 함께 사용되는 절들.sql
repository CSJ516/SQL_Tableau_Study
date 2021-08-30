USE EDU --[EDU] 데이터베이스 사용


/* Member 테이블 가져오기 */

--EDU 우클릭 - 태스크 - 플랫 파일 가져오기 - 파일 선택 후 기본키, Null 여부 지정


/* SELECT + FROM */

--FROM: 테이블을 선택하는 명령어

SELECT * FROM  [Member]


/* SELECT + FROM + WHERE */

--WHERE: 테이블을 특정 조건으로 필터하는 명령어

SELECT  * --모든 컬럼 
  FROM  [Member]
 WHERE  gender = 'man'


/* SELECT + FROM + WHERE + GROUP BY */

--GROUP BY: 특정 열들을 그룹으로 묶는 명령어
--COUNT: 특정 조건을 만족하는 열의 개수를 구하는 집계 함수

SELECT  addr
		,COUNT(mem_no) AS [회원수집계]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr

--GROUP BY 열을 2개 이상 사용

SELECT  addr
		,gender
		,COUNT(mem_no) AS [회원수집계]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr
		,gender


/* SELECT + FROM + WHERE + GROUP BY + HAVING */

--HAVING: GROUP BY된 테이블을 특정 조건으로 필터하는 명령어

SELECT  addr
		,COUNT(mem_no) AS [회원수집계]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr
HAVING  COUNT(mem_no) >= 50


/* SELECT + FROM + WHERE + GROUP BY + HAVING + ORDER BY */

--ORDER BY: 조회된 행을 정렬하는 명령어
--DESC: 내림차순, ASC: 오름차순

SELECT  addr
		,COUNT(mem_no) AS [회원수집계]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr
HAVING  COUNT(mem_no) >= 50
 ORDER
    BY  COUNT(mem_no) DESC


/* SQL 문법 vs 실행 순서 */

--문법 순서: SELECT - FROM - WHERE - GROUP BY - HAVING - ORDER BY
--실행 순서: FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY
USE EDU --[EDU] 데이터베이스 사용


/* [Order] 테이블 기준으로 [Member] 테이블을 LEFT JOIN */

SELECT  *
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no


/* [gender]별 [sales_amt] 합계 */

SELECT  B.gender
		,SUM(sales_amt) AS tot_amt
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no
 GROUP
    BY  B.gender


/* [gender], [addr]별 [sales_amt] 합계 */

SELECT  B.gender
		,B.addr
		,SUM(sales_amt) AS tot_amt
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no
 GROUP
    BY  B.gender
		,B.addr


/* [Order] 테이블의 [mem_no]별 [sales_amt] 합계 */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 GROUP
    BY  mem_no 

--FROM절 서브 쿼리를 사용하여, [Member] 테이블을 LEFT JOIN

SELECT  *
  FROM  (
		SELECT  mem_no
				,SUM(sales_amt) AS tot_amt
		  FROM  [Order]
		 GROUP
			BY  mem_no
		)A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no


/* [gender], [addr]별 [tot_amt] 합계 */

SELECT  B.gender
		,B.addr
		,SUM(tot_amt) AS 합계
  FROM  (
		SELECT  mem_no
				,SUM(sales_amt) AS tot_amt
		  FROM  [Order]
		 GROUP
			BY  mem_no 
		)A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no
 GROUP
    BY  B.gender
		,B.addr
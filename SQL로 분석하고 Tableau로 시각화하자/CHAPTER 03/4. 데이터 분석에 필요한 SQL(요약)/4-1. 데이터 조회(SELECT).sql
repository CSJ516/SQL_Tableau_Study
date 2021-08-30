USE EDU --[EDU] 데이터베이스 사용


/* [Order] 테이블의 모든 컬럼 조회 */

SELECT  *
  FROM  [Order]


/* [shop_code]는 30 이상으로만 필터링 */

SELECT  *
  FROM  [Order]
 WHERE  shop_code >= 30


/* [mem_no]별 [sales_amt] 합계 */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 WHERE  shop_code >= 30
 GROUP
    BY  mem_no


/* [sales_amt] 합계가 100000 이상으로만 필터링 */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 WHERE  shop_code >= 30
 GROUP
    BY  mem_no
HAVING  SUM(sales_amt) >= 100000


/* [sales_amt] 합계가 높은 순으로 정렬 */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 WHERE  shop_code >= 30
 GROUP
    BY  mem_no 
HAVING  SUM(sales_amt) >= 100000
 ORDER
    BY  SUM(sales_amt) DESC
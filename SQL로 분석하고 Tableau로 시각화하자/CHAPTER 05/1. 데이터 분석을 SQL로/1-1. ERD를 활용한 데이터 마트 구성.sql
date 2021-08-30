USE EDU


/* Car_member, Car_order, Car_orderdetail, Car_product, Car_store 테이블 가져오기 */

--EDU 우클릭 - 태스크 - 플랫 파일 가져오기 - 파일 선택 후 데이터 형식, 기본키, Null 여부 지정


/* ERD를 활용한 데이터 마트 구성 */

SELECT  A.*
		,B.prod_cd
		,B.quantity
		,D.price
		,B.quantity * D.price AS sales_amt
		,C.store_addr
		,D.brand
		,D.model
		,E.gender
		,E.age
		,E.addr
		,E.join_date
  INTO  [Car_MART]
  FROM  [Car_order] A
  LEFT  JOIN  [Car_orderdetail] B ON  A.order_no =  B.order_no
  LEFT  JOIN  [Car_store] C       ON  A.store_cd =  C.store_cd
  LEFT  JOIN  [Car_product] D     ON  B.prod_cd  =  D.prod_cd
  LEFT  JOIN  [Car_member] E      ON  A.mem_no   =  E.mem_no

--[Car_MART] 테이블의 모든 컬럼 조회
SELECT  *
  FROM  [Car_MART]



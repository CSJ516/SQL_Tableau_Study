USE EDU


/* PROCEDURE */

--PROCEDURE 생성
--가상 테이블이 아니기 때문에 열 이름 중복에도 불구하고 모든 열(*) 조회 가능
CREATE PROCEDURE [Order_Member]
(
@channel_code AS INT
)
AS
SELECT  *
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no
 WHERE  A.channel_code = @channel_code

--PROCEDURE 실행
EXEC [Order_Member] 3

--PROCEDURE 수정
ALTER PROCEDURE [Order_Member]
(
@channel_code AS INT
,@YEAR_order_date AS INT
)
AS
SELECT  *
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no
 WHERE  A.channel_code = @channel_code
   AND  YEAR(order_date) = @YEAR_order_date

EXEC [Order_Member] 3 ,2021

--PROCEDURE 삭제
DROP PROCEDURE [Order_Member]
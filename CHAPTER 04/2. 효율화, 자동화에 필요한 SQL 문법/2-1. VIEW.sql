USE EDU


/* VIEW */

--VIEW 생성
--중복되는 열 이름을 조회하는 명령어는 X (ex) 모든 열(*))
CREATE VIEW [Order_Member]
AS
SELECT  A.*
		,B.gender
		,B.ageband
		,B.join_date
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no

--VIEW 조회
SELECT  *
  FROM  [Order_Member]

--VIEW 수정
ALTER VIEW [Order_Member]
AS
SELECT  A.*
		,B.gender
		,B.ageband
		,B.join_date
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no
 WHERE  A.channel_code = 1

SELECT  *
  FROM  [Order_Member]

--VIEW 삭제
DROP VIEW [Order_Member]
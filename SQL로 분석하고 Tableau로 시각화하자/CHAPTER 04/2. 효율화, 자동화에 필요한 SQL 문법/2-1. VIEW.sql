USE EDU


/* VIEW */

--VIEW ����
--�ߺ��Ǵ� �� �̸��� ��ȸ�ϴ� ��ɾ�� X (ex) ��� ��(*))
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

--VIEW ��ȸ
SELECT  *
  FROM  [Order_Member]

--VIEW ����
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

--VIEW ����
DROP VIEW [Order_Member]
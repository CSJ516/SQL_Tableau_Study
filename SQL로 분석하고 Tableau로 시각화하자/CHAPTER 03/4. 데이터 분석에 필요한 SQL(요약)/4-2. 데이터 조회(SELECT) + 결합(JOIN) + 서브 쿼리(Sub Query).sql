USE EDU --[EDU] �����ͺ��̽� ���


/* [Order] ���̺� �������� [Member] ���̺��� LEFT JOIN */

SELECT  *
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no


/* [gender]�� [sales_amt] �հ� */

SELECT  B.gender
		,SUM(sales_amt) AS tot_amt
  FROM  [Order] A
  LEFT
  JOIN  [Member] B
    ON  A.mem_no = B.mem_no
 GROUP
    BY  B.gender


/* [gender], [addr]�� [sales_amt] �հ� */

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


/* [Order] ���̺��� [mem_no]�� [sales_amt] �հ� */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 GROUP
    BY  mem_no 

--FROM�� ���� ������ ����Ͽ�, [Member] ���̺��� LEFT JOIN

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


/* [gender], [addr]�� [tot_amt] �հ� */

SELECT  B.gender
		,B.addr
		,SUM(tot_amt) AS �հ�
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
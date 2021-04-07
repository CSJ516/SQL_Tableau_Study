USE EDU


/* ���� �Լ� */

--ORDER BY
SELECT  order_date
		,ROW_NUMBER() OVER (ORDER BY order_date ASC) AS ROW_NUMBER
		
		,RANK()       OVER (ORDER BY order_date ASC) AS RANK
		
		,DENSE_RANK() OVER (ORDER BY order_date ASC) AS DENSE_RANK
  FROM  [Order]

--ORDER BY + PATITION BY : [mem_no] ������ ���еǾ� ���� ��ȸ
SELECT  mem_no
		,order_date
		,ROW_NUMBER() OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS ROW_NUMBER
		
		,RANK()       OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS RANK
		
		,DENSE_RANK() OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS DENSE_RANK
  FROM  [Order]


/* ���� �Լ� */

--ORDER BY
SELECT  order_date
		,sales_amt
		,COUNT(sales_amt) OVER (ORDER BY order_date ASC) AS ����_����Ƚ��
		,SUM(sales_amt) OVER (ORDER BY order_date ASC) AS ����_���űݾ�
		,AVG(sales_amt) OVER (ORDER BY order_date ASC) AS ����_��ձ��űݾ�
		,MAX(sales_amt) OVER (ORDER BY order_date ASC) AS ����_����������űݾ�
		,MIN(sales_amt) OVER (ORDER BY order_date ASC) AS ����_���峷�����űݾ�
  FROM  [Order]

--ORDER BY + PATITION BY : [mem_no] ������ ���еǾ� ���� ���� ��ȸ
SELECT  mem_no
		,order_date
		,sales_amt
		,COUNT(sales_amt) OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS ����_����Ƚ��
		,SUM(sales_amt) OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS ����_���űݾ�
		,AVG(sales_amt) OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS ����_��ձ��űݾ�
		,MAX(sales_amt) OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS ����_����������űݾ�
		,MIN(sales_amt) OVER (PARTITION BY mem_no ORDER BY order_date ASC) AS ����_���峷�����űݾ�
  FROM  [Order]
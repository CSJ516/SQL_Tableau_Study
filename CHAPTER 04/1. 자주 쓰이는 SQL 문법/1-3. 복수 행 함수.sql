USE EDU


/* ���� �Լ� */

--���̺� ��ü �࿡ ���� ���� �Լ�
SELECT  COUNT(order_no) AS �ֹ���
		,SUM(sales_amt) AS �ֹ��ݾ�
		,AVG(sales_amt) AS ����ֹ��ݾ�
		,MAX(order_date) AS �ֱٱ�������
		,MIN(order_date) AS ���ʱ�������
		,STDEV(sales_amt) AS �ֹ��ݾ�_ǥ������
		,VAR(sales_amt) AS �ֹ��ݾ�_�л�
  FROM  [Order]

--���� �Լ� + GROUP BY : �׷� �� ���� �࿡ ���� ���� �Լ�
SELECT  mem_no
		,COUNT(order_no) AS �ֹ���
		,SUM(sales_amt) AS �ֹ��ݾ�
		,AVG(sales_amt) AS ����ֹ��ݾ�
		,MAX(order_date) AS �ֱٱ�������
		,MIN(order_date) AS ���ʱ�������
		,STDEV(sales_amt) AS �ֹ��ݾ�_ǥ������
		,VAR(sales_amt) AS �ֹ��ݾ�_�л�
  FROM  [Order]
 GROUP
    BY  mem_no


/* �׷� �Լ� */

--WITH ROLLUP (NULL ���. �Ѱ� �� �Ұ踦 ���� �� ���)
--GROUP BY �׸���� �����ʿ��� ���� ������ �׷����� ����
--[channel_code] -> YEAR(order_date)
SELECT  YEAR(order_date) AS ����
		,channel_code AS ä���ڵ�
		,SUM(sales_amt) AS �ֹ��ݾ�
  FROM  [Order]
 GROUP
    BY  YEAR(order_date)
		,channel_code
WITH ROLLUP
 ORDER
    BY 1 DESC, 2 ASC

--WITH ROLLUP ��
--WITH ROLLUP ��� �� �� ���
SELECT  YEAR(order_date) AS ����
		,channel_code AS ä���ڵ�
		,SUM(sales_amt) AS �ֹ��ݾ�
  FROM  [Order]
 GROUP
    BY  YEAR(order_date)
		,channel_code
--WITH ROLLUP
 ORDER
    BY 1 DESC, 2 ASC

--WITH CUBE (WITH ROLLUP���� ���� ���� �� ��ȸ)
--GROUP BY �׸���� ��� ����� ���� �׷����� ����
SELECT  YEAR(order_date) AS ����
		,channel_code AS ä���ڵ�
		,SUM(sales_amt) AS �ֹ��ݾ�
  FROM  [Order]
 GROUP
    BY  YEAR(order_date)
		,channel_code
WITH CUBE
 ORDER
    BY 1 DESC, 2 ASC

--GROUPING SETS
--GROUP BY �׸���� ���� �׷����� ����
SELECT  YEAR(order_date) AS ����
		,channel_code AS ä���ڵ�
		,SUM(sales_amt) AS �ֹ��ݾ�
  FROM  [Order]
 GROUP
    BY  GROUPING SETS( YEAR(order_date), channel_code )

--GROUPING
--WITH ROLLUP �� CUBE�� ���� �׷�ȭ �Ǿ��ٸ� 0, �׷��� ������ 1 ��ȯ
--WITH ROLLUP �Լ��� �ַ� ���
SELECT  YEAR(order_date) AS ����
		,GROUPING(YEAR(order_date)) AS ����_GROUPING
		
		,channel_code AS ä���ڵ�
		,GROUPING(channel_code) AS ä���ڵ�_GROUPING
		
		,SUM(sales_amt) AS �ֹ��ݾ�
  FROM  [Order]
 GROUP
    BY  YEAR(order_date)
		,channel_code
WITH ROLLUP
 ORDER
    BY 1 DESC, 2 ASC

--GROUPING �� CASE WHEN�� Ȱ���� �Ѱ� �� �Ұ� ��ȯ
--(1) YEAR(order_date) �� channel_code ���� -> ���� ����ȯ
SELECT  CAST(YEAR(order_date) AS VARCHAR) AS ����
		,CAST(channel_code AS VARCHAR) AS ä���ڵ�
		,sales_amt
  FROM  [Order]

--(2) (1)�� ���� ������ �Ͽ�, CASE WHEN���� �Ѱ� �� �Ұ� ��ȯ
SELECT  CASE WHEN GROUPING(����)=1 THEN '�Ѱ�'
			 ELSE ���� END AS ����_�Ѱ�

		,CASE WHEN GROUPING(����)=1 THEN '�Ѱ�'
			  WHEN GROUPING(ä���ڵ�)=1 THEN '�Ұ�'
			  ELSE ä���ڵ� END AS ä���ڵ�_�ѼҰ�

		,SUM(sales_amt) AS �ֹ��ݾ�
  FROM  (
		SELECT  CAST(YEAR(order_date) AS VARCHAR) AS ����
				,CAST(channel_code AS VARCHAR) AS ä���ڵ�
				,sales_amt
		 FROM  [Order]
		)A
 GROUP
    BY  ����, ä���ڵ�
WITH ROLLUP
 ORDER
    BY 1 DESC, 2 ASC
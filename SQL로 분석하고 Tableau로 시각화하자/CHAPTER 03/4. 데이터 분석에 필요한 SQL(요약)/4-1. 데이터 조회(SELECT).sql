USE EDU --[EDU] �����ͺ��̽� ���


/* [Order] ���̺��� ��� �÷� ��ȸ */

SELECT  *
  FROM  [Order]


/* [shop_code]�� 30 �̻����θ� ���͸� */

SELECT  *
  FROM  [Order]
 WHERE  shop_code >= 30


/* [mem_no]�� [sales_amt] �հ� */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 WHERE  shop_code >= 30
 GROUP
    BY  mem_no


/* [sales_amt] �հ谡 100000 �̻����θ� ���͸� */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 WHERE  shop_code >= 30
 GROUP
    BY  mem_no
HAVING  SUM(sales_amt) >= 100000


/* [sales_amt] �հ谡 ���� ������ ���� */

SELECT  mem_no
		,SUM(sales_amt) AS tot_amt
  FROM  [Order]
 WHERE  shop_code >= 30
 GROUP
    BY  mem_no 
HAVING  SUM(sales_amt) >= 100000
 ORDER
    BY  SUM(sales_amt) DESC
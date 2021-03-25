USE EDU --[EDU] �����ͺ��̽� ���


/* Order ���̺� �������� */

--EDU ��Ŭ�� - �½�ũ - �÷� ���� �������� - ���� ���� �� ������ ����, �⺻Ű, Null ���� ����


/* INNER JOIN */

--INNER JOIN: ����� ��ҵ��� ���� �����ϴ� ���� ���
--ON: �� ���̺� ���� ���� ������ �����ϴ� ��ɾ�
--��κ� PK �� FK�� ���� �������� ����

SELECT  *
  FROM  [Member] AS A --[Member] ���̺� ��Ī A
 INNER
  JOIN  [Order] AS B --[Order] ���̺� ��Ī B
    ON  A.mem_no = B.mem_no --���� ��(mem_no) ����


/* OUTER JOIN */

--OUTER JOIN: �������� ��Ī���� �ʴ� ��ҵ鵵 �����ϴ� ���� ���
--LEFT JOIN: ���� ���̺� ���� ������ ��ȸ
--��Ī���� �ʴ� �����ʹ� ��� NULL ������ ��ȸ

SELECT  *
  FROM  [Member] A
  LEFT
  JOIN  [Order] B
    ON  A.mem_no = B.mem_no

--RIGHT JOIN: ������ ���̺� ���� ������ ��ȸ
--�ش� ������ ���, ��ȸ�� �ֹ��� �Ұ����ϴٰ� �����߱� ������ NULL �� X

SELECT  *
  FROM  [Member] A
 RIGHT
  JOIN  [Order] B
    ON  A.mem_no = B.mem_no

--FULL JOIN: ���� ���̺� ���� ������ ��ȸ

SELECT  *
  FROM  [Member] A
  FULL
  JOIN  [Order] B
    ON  A.mem_no = B.mem_no


/* CROSS, SELF JOIN */

--CROSS JOIN: �� ���̺��� ���� ������ ������ ��ȸ
--mem_no�� ���ʿ� �����Ƿ�, A.mem_no �Ǵ� B.mem_no�� ���

SELECT  *
  FROM  [Member] A
  CROSS
  JOIN  [Order] B 
 WHERE  A.mem_no = '1000001'
 
--SELF JOIN: �� ���̺��� �� ���̺�(A,B)�� �Ͽ� ���� ������ ������ ��ȸ

SELECT  *
  FROM  [Member] A, [Member] B
 WHERE  A.mem_no = '1000001'
USE EDU --[EDU] �����ͺ��̽� ���


/* Member ���̺� �������� */

--EDU ��Ŭ�� - �½�ũ - �÷� ���� �������� - ���� ���� �� �⺻Ű, Null ���� ����


/* SELECT + FROM */

--FROM: ���̺��� �����ϴ� ��ɾ�

SELECT * FROM  [Member]


/* SELECT + FROM + WHERE */

--WHERE: ���̺��� Ư�� �������� �����ϴ� ��ɾ�

SELECT  * --��� �÷� 
  FROM  [Member]
 WHERE  gender = 'man'


/* SELECT + FROM + WHERE + GROUP BY */

--GROUP BY: Ư�� ������ �׷����� ���� ��ɾ�
--COUNT: Ư�� ������ �����ϴ� ���� ������ ���ϴ� ���� �Լ�

SELECT  addr
		,COUNT(mem_no) AS [ȸ��������]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr

--GROUP BY ���� 2�� �̻� ���

SELECT  addr
		,gender
		,COUNT(mem_no) AS [ȸ��������]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr
		,gender


/* SELECT + FROM + WHERE + GROUP BY + HAVING */

--HAVING: GROUP BY�� ���̺��� Ư�� �������� �����ϴ� ��ɾ�

SELECT  addr
		,COUNT(mem_no) AS [ȸ��������]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr
HAVING  COUNT(mem_no) >= 50


/* SELECT + FROM + WHERE + GROUP BY + HAVING + ORDER BY */

--ORDER BY: ��ȸ�� ���� �����ϴ� ��ɾ�
--DESC: ��������, ASC: ��������

SELECT  addr
		,COUNT(mem_no) AS [ȸ��������]
  FROM  [Member]
 WHERE  gender = 'man'
 GROUP
    BY  addr
HAVING  COUNT(mem_no) >= 50
 ORDER
    BY  COUNT(mem_no) DESC


/* SQL ���� vs ���� ���� */

--���� ����: SELECT - FROM - WHERE - GROUP BY - HAVING - ORDER BY
--���� ����: FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY
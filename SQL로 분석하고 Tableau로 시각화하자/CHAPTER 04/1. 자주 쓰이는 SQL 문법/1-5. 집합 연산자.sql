USE EDU


/* Member_1.csv �� Member_2.csv ���̺� �������� */

--EDU ��Ŭ�� - �½�ũ - �÷� ���� �������� - ���� ���� �� ������ ����, �⺻Ű, Null ���� ����


/* UNION */

--�� ���̺��� ������ ���·� ��ȯ. �ߺ��� ���� �ϳ��� ������ ��ȯ
SELECT  *
  FROM  [Member_1]
UNION
SELECT  *
  FROM  [Member_2]


/* UNION ALL */

--�� ���̺��� ������ ���·� ��ȯ. �ߺ��� ���� �״�� ��ȯ
SELECT  *
  FROM  [Member_1]
UNION ALL
SELECT  *
  FROM  [Member_2]


/* INTERSECT */

--�� ���̺��� ������ ���·� ��ȯ. �ߺ��� ���� �ϳ��� ������ ��ȯ
SELECT  *
  FROM  [Member_1]
INTERSECT
SELECT  *
  FROM  [Member_2]


/* EXCEPT */

--�� ���̺��� ������ ���·� ��ȯ. �ߺ��� ���� �ϳ��� ������ ��ȯ
SELECT  *
  FROM  [Member_1]
EXCEPT
SELECT  *
  FROM  [Member_2]
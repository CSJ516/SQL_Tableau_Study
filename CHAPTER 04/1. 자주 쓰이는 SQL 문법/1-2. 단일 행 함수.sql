
/* ��¥�� �Լ� */

--GETDATE(): ���� ��¥�� �ð� ��ȯ
SELECT  GETDATE()

--YEAR/MONTH/DAY: YEAR, MONTH, DAY ������ ��ȯ 
SELECT  YEAR('2020-12-31') --2020��
SELECT  MONTH('2020-12-31') --12��
SELECT  DAY('2020-12-31') --31��

--DATEPART: ���� ����(YEAR, MONTH, DAY + HH, MI, SS, DW)���� ������ ��ȯ
SELECT  DATEPART(YEAR,'2020-12-31 10:20:30') --2020��
SELECT  DATEPART(MONTH,'2020-12-31 10:20:30') --12��
SELECT  DATEPART(DAY,'2020-12-31 10:20:30') --31��
SELECT  DATEPART(HH,'2020-12-31 10:20:30') --10�ð�
SELECT  DATEPART(MI,'2020-12-31 10:20:30') --20��
SELECT  DATEPART(SS,'2020-12-31 10:20:30') --30�� 
SELECT  DATEPART(DW,'2020-12-31 10:20:30') --5 -> ����� (* 1~7 -> ��~��)

--DATEADD: ������ ����(YEAR, MONTH, DAY + HH, MI, SS)���� +-���� ��ŭ ���� ������ ��ȯ
SELECT  DATEADD(YEAR, -1, '2020-12-31')  
SELECT  DATEADD(MONTH, -1, '2020-12-31')
SELECT  DATEADD(DAY, -1, '2020-12-31')
SELECT  DATEADD(HH, -1, '2020-12-31')
SELECT  DATEADD(MI, -1, '2020-12-31')
SELECT  DATEADD(SS, -1, '2020-12-31')

--DATEDIFF: ������ ����(YEAR, MONTH, DAY + HH, MI, SS)���� �� ��¥�� ���� ������ ��ȯ
SELECT  DATEDIFF(YEAR, '2020-12-31', '2021-12-31')
SELECT  DATEDIFF(MONTH, '2020-12-31', '2021-12-31')
SELECT  DATEDIFF(DAY, '2020-12-31', '2021-12-31')
SELECT  DATEDIFF(HH, '2020-12-31', '2021-12-31')
SELECT  DATEDIFF(MI, '2020-12-31', '2021-12-31')
SELECT  DATEDIFF(SS, '2020-12-31', '2021-12-31')


/* ������ �Լ� */

--LOWER: �ҹ��� ��ȯ
SELECT  LOWER('ABCD')

--UPPER: �빮�� ��ȯ
SELECT  UPPER('abcd')

--LEFT: ���ʺ��� ������ �� ��ŭ ���� ��ȯ
SELECT  LEFT('ABCD', 2)

--RIGHT: �����ʺ��� ������ �� ��ŭ ���� ��ȯ
SELECT  RIGHT('ABCD', 2)

--LEN: ���ڼ� ��ȯ(������ ��������)
SELECT  LEN('ABCD')
SELECT  LEN('ABCD ')
SELECT  LEN(' ABCD')

--REPLACE: ���ڿ� ��, ���� ���� ��ȯ
SELECT  REPLACE('ABCD', 'A', 'a')

--CONCAT: �� �̻��� ���ڿ� ����
SELECT  CONCAT('AB', 'C', 'D')

--LTRIM: ���� ���� ���� ���� ��ȯ
SELECT  LTRIM('  ABCD')

--RTRIM: ������ ���� ���� ���� ��ȯ
SELECT  RTRIM('ABCD  ')

--TRIM: ���� ���� ���� ���� ��ȯ
SELECT  TRIM('  ABCD  ')

--SUBSTRING: ���ڿ��� ���� ��ġ �� ���� ��ŭ ���� ��ȯ
SELECT  SUBSTRING('ABCD', 2, 2)

--CHARINDEX: ���ڿ� ��, ���� ���� ��ġ ��ȯ(���� ���ڰ� ������, 0 ��ȯ)
SELECT  CHARINDEX('B','ABCD')
SELECT  CHARINDEX('B','ABCD', 3) -- ABCD���� 3���� �˻����� 

--SPACE: ���� �߰�
SELECT  'A'+SPACE(5)+'B'

--STUFF: 
SELECT  STUFF('ABCD', 2, 2, 'xx')


/* ������ �Լ� */

--ABS: �ҹ��� ��ȯ
SELECT  ABS(-123)

--ROUND: �ݿø�
SELECT  ROUND(1.56, 1)

--CEILING: ũ�ų� ���� �ּ� ����
SELECT  CEILING(1.56)

--FLOOR: �۰ų� ���� �ּ� ����
SELECT  FLOOR(1.56)

--POWER: ������
SELECT  POWER(3,2)

--POWER: ������
SELECT  SQRT(9)


/* �� ��ȯ �Լ� */

--CONVERT(VARCHAR, ����¥����, ����): ���� �������� ��¥ -> ���� ������ ���� ��ȯ
SELECT  CONVERT(VARCHAR, GETDATE(), 1)
SELECT  CONVERT(VARCHAR, GETDATE(), 5)
SELECT  CONVERT(VARCHAR, GETDATE(), 8)

SELECT  CONVERT(VARCHAR, GETDATE(), 21)
SELECT  CONVERT(VARCHAR, GETDATE(), 23)

SELECT  CONVERT(VARCHAR, GETDATE(), 111)
SELECT  CONVERT(VARCHAR, GETDATE(), 112)
SELECT  CONVERT(VARCHAR, GETDATE(), 120)

--CONVERT(VARCHAR(n), ����¥����, ����): ���� �������� ��¥ -> ���� ������ ���� ��ȯ + n ���� ��ŭ
SELECT  CONVERT(VARCHAR(8), GETDATE(), 112)
SELECT  CONVERT(VARCHAR(6), GETDATE(), 112)
SELECT  CONVERT(VARCHAR(4), GETDATE(), 112)

--CAST(���� or ���ڿ� AS ����): ���� �������� ���� or ���ڿ� ������ ���� ��ȯ
SELECT  CAST('100' AS INT) + CAST('100' AS INT)
SELECT  CAST(100 AS VARCHAR) + CAST(100 AS VARCHAR)

SELECT  CAST(1.56 AS INT)
SELECT  CAST(1.56 AS NUMERIC)

SELECT  CAST(GETDATE() AS DATE)
SELECT  CAST(GETDATE() AS DATETIME)


/* �Ϲ� �Լ� */

--ISNULL: Ư�� ���� NULL�� ���, ���� �� ��ȯ
SELECT  ISNULL(NULL, 0)

--NULLIF: �� ���� Ư�� ���� ���� ��� NULL / �ٸ� ��� ���� �� ��ȯ
SELECT  NULLIF(1, 1)
SELECT  NULLIF(1, 2)

USE EDU

--CASE WHEN: ���� ���Ǻ��� ���� �� ��ȯ
--���� �� ���� NULL ��ȯ
SELECT  *
		,CASE WHEN ageband BETWEEN 20 AND 30 THEN '2030����'
		      WHEN ageband BETWEEN 40 AND 50 THEN '4050����'
			  END AS ageband_seg
  FROM  [Member]

--CASE WHEN(+ELSE): ���� ���Ǻ��� ���� �� ��ȯ(+ELSE)
--���� �� ���� ELSE�� ����
SELECT  *
		,CASE WHEN ageband BETWEEN 20 AND 30 THEN '2030����'
		      WHEN ageband BETWEEN 40 AND 50 THEN '4050����'
			  ELSE 'OTHER����' END AS ageband_seg
  FROM  [Member]
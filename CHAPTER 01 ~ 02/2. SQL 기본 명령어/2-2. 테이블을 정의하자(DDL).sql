USE EDU --[EDU] �����ͺ��̽� ���


/* CREATE */

--[ȸ�����̺�] ���� - [EDU] �����ͺ��̽��� ���̺��� Ȯ��
CREATE TABLE [ȸ�����̺�] (
[ȸ����ȣ] VARCHAR(20) PRIMARY KEY,
[�̸�] VARCHAR(10),
[����] VARCHAR(2),
[����] INT,
[���Աݾ�] MONEY,
[��������] DATE NOT NULL,
[���ŵ���] BIT
)
--PRIMARY KEY�� NOT NULL�� ������ ���� ����


/* ALTER */

--[ȸ�����̺�]�� [������] �÷� �߰�, ������ ������ REAL
ALTER TABLE [ȸ�����̺�] ADD [������] REAL

--���� �߰��� �� �ݵ�� ������ ���� ����
--REAL�� ����������, FLOAT(24)�� ����

--[ȸ�����̺�]�� [������] �÷� ������ ���� INT�� ����
ALTER TABLE [ȸ�����̺�] ALTER COLUMN [������] INT


/* RENAME */

--[ȸ�����̺�]�� [������] �÷� [������(kg)]�� ����
SP_RENAME '[ȸ�����̺�].[������]', '������(kg)'

--[ȸ�����̺�] ���̺�� [MEMBER]�� ����
SP_RENAME '[ȸ�����̺�]', 'MEMBER'


/* TRUNCATE, DROP */

--[MEMBER] ���̺� ��� �� ������ ����
TRUNCATE TABLE [MEMBER]

--[MEMBER] ���̺� ����
DROP TABLE [MEMBER]
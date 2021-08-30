
--Transaction: DML ��ɹ����� �ϳ��� �׷����� ó���ϴ� ������ �۾� ����
--�׷� �� �ϳ��� ��ɾ�� ������ �߻��Ѵٸ�, ��� DML ��ɾ� ���

USE EDU --[EDU] �����ͺ��̽� ���


/* COMMIT */

--BEGIN TRAN -> DELETE -> COMMIT
--COMMIT ��ɾ� ���� �� �����Ͱ� �������� �����Ƿ�, ������ �ǽ��� ���� ���� X

BEGIN TRAN --TCL ��ɾ �����ϱ� ���� ���� ��ɾ�
DELETE  FROM  [ȸ�����̺�] --[ȸ�����̺�] ��� �� ������ ����
COMMIT --��� �� ������ ���� ����


/* ROLLBACK */

--BEGIN TRAN -> DELETE -> ROLLBACK
--��ȣ ������� �巡���Ͽ� ����

USE EDU --1. [EDU] �����ͺ��̽� ���
BEGIN TRAN --2. TCL ����
SELECT * FROM  [ȸ�����̺�] --3. [ȸ�����̺�] ��� �� ������ ���� ��
DELETE  FROM  [ȸ�����̺�] --4. [ȸ�����̺�] ��� �� ������ ����
SELECT * FROM  [ȸ�����̺�] --5. [ȸ�����̺�] ��� �� ������ ���� ��
ROLLBACK --6. [ȸ�����̺�] ��� �� ������ ���� ���
SELECT * FROM  [ȸ�����̺�] --7. [ȸ�����̺�] ��� �� ������ ���� ��� ��


/* SAVEPOINT */

--��ȣ ������� �巡���Ͽ� ����

USE EDU --1. [EDU] �����ͺ��̽� ���
BEGIN TRAN --2. TCL ����

SAVE TRAN S1; --3. SAVEPOINT.1: [ȸ�����̺�]�� 'A10001' ȸ�� ������ ����(INSERT)
INSERT INTO  [ȸ�����̺�]  VALUES ('A10001', '�����', '��', 33, 100000, '2020-01-01', 1);
SAVE TRAN S2; --4. SAVEPOINT.2: 'A10001' ���� 34�� ����(UPDATE)
UPDATE  [ȸ�����̺�]  SET  [����] = 34 WHERE  [ȸ����ȣ] = 'A10001'
SAVE TRAN S3; --5. SAVEPOINT.3: [ȸ�����̺�]�� 'A10003' ȸ�� ������ ����(DELETE)
DELETE FROM [ȸ�����̺�] WHERE  [ȸ����ȣ] = 'A10003'

SELECT * FROM  [ȸ�����̺�] --3~5�� ���� Ȯ��

ROLLBACK TRAN S3; --6. S3 ���� ���
SELECT * FROM  [ȸ�����̺�] --Ȯ��
ROLLBACK TRAN S2; --7. S2 ���� ���
SELECT * FROM  [ȸ�����̺�] --Ȯ��
ROLLBACK TRAN S1; --8. S1 ���� ���
SELECT * FROM  [ȸ�����̺�] --Ȯ��

SELECT * FROM  [ȸ�����̺�] --6~8�� ���� Ȯ��
USE EDU --[EDU] �����ͺ��̽��� ����մϴ�.


/* GRANT */

--MWS��� �������� [ȸ�����̺�] ���� �ο�
GRANT SELECT, INSERT, UPDATE, DELETE ON [ȸ�����̺�] TO MWS WITH GRANT OPTION

--WITH GRANT OPTION: MWS�� ���� ������ �ٸ� ����ڿ��� �ο��� �� �ִ� ��ɾ�


/* REVOKE */

--MWS��� �������� [ȸ�����̺�] ���� ����
REVOKE SELECT, INSERT, UPDATE, DELETE ON [ȸ�����̺�] TO MWS CASCADE

--CASCADE: MWS�� �ٸ� ����ڿ��� �ο��� ���ѵ� ���������� ����� �� �ִ� ��ɾ�
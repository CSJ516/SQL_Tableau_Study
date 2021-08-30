USE EDU --[EDU] 데이터베이스를 사용합니다.


/* GRANT */

--MWS라는 유저에게 [회원테이블] 권한 부여
GRANT SELECT, INSERT, UPDATE, DELETE ON [회원테이블] TO MWS WITH GRANT OPTION

--WITH GRANT OPTION: MWS가 받은 권한을 다른 사용자에게 부여할 수 있는 명령어


/* REVOKE */

--MWS라는 유저에게 [회원테이블] 권한 제거
REVOKE SELECT, INSERT, UPDATE, DELETE ON [회원테이블] TO MWS CASCADE

--CASCADE: MWS가 다른 사용자에게 부여한 권한도 연쇄적으로 취소할 수 있는 명령어
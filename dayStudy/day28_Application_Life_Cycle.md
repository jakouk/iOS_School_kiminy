## Day28 Application Life Cycle

### Review

 - Application Life Cycle
 - NSObject Life Cycle
 - UIViewController Life Cycle

### Foreground

 - inactive -> 화면에는 올라 있지만 유저의 이벤트를 받지 못하는 상태
( 알림창  or 제어창등 )
 - active -> 유저 엑티브를 받을수 있는 상태

### Background

 - background 상태에서 너무 오래 실행을 시키지 않으면 자동으로 종료시킨다.
 - background될 때의 상태를 임시 저장 시켜 놓으라고 애플에서 가이드해 놓는다.
 - 카테고리는 전역으로 적용시키는 것과 비슷하다.

### UX 강의
 - 사이드바 버튼 vs 스와이핑
 - 메인화면에서 무언가 사용하는 것이 많을때고 설정해 주어야 할것이 많을때는
스와이핑 사이드바를 사용하는 것이 많다.
 - 프로토타이핑 툴 (Daum Oven)

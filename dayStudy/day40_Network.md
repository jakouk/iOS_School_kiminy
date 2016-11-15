## Day 40 Network

### Review
***
- Thread
- GCD

### Network
***
#### 클라이언트 서버 모델 (Client-server-model)
 - Network architecture중 하나
 - Server : Client의 요청에 따라서 데이터를 제공해 주는 컴퓨터
 - Client : 서버로부터 요청한 데이터를 받는 컴퓨터
 - 각각의 컴퓨터가 Client, Server의 역활에 맞게 구성되어 Network통신이 이뤄진다면 우린 이걸 클라이언트 서버 모델이라고 부를수 있다. 


#### Protocol & URL & URI
 - http -> www에서 사용하는 프로토콜
 - url -> Uniform Resource Locator ( 파일의 실제 위치를 나타내는 것 ) 
 - uri -> Uniform Resource Identifier ( 인터넷에 있는 자원을 나타내는 유일한 주소 , 기기에 따라서 다른 파일을 주어야 하기 때문에 통합적인 identifier를 사용한다. http://naver.com/basefile 에서 basefile이 identifier이다.  )


### Rest
***
 - REST(Representational State Transfer)는 월드 와이드 웹과 같은 분산 하이퍼미디어 시스템을 위한 소프트웨어 아키텍처의 한 형식이다. 
 - 엄격한 의미로 REST는 네트워크 아키텍처 원리의 모음이다. 여기서 ‘네트워크 아키텍처 원리’란 자원을 정의하고 자원에 대한 주소를 지정하는 방법 전반을 일컫는다.
 - Resources : URI들은 쉽게 자원의 내용을 이해할수 있게 만들어야 한다. 
 - Representations :  객체와 속성을 나타내는 데어터와 JSON이나 XML구조로 전환해서 표현한다. 
 - Messages : HTTP Methods를 사용한다. ( for example, GET, POST, PUT, and DELETE).
 - Stateless : server와 client의 요청사항은 저장하지 않는다. client는 session 상태를 유지한다. 

#### oauth

 - 통합인증방식 
 - session -> 토큰 방식이라고 생각하면 된다. 


### JSON
***
 - JSON(JavsScript Object Notation)은 속성-값 쌍으로 이루어진 데이터 오브젝트 전달하기 위해 인간이 읽을 수 있는 텍스트를 사용하는 개방형 표준포맷이다. 
 - 비동기 브라우저/ 서버 통신 (AJAJ)을 위해, 넓게는 XML(AJAX가 사용)을 대체하는 주요 데이터 포맷이다. 
 - 특히, 인터넷에서 자료를 주고 받을 때 그 자료를 표현하는 방법으로 잘려져 있다. 
 - 자료의 종류에 큰 제한은 없으며, 특히 컴퓨터 프로그램의 변수값을 표현하는 데 적합하다. 




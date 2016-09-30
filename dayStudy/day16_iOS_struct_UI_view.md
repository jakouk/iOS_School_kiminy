#### **Day16. iOS Struct & UI View**
#### review
***
- linkedList
- dictionaries

##### 객체참조 (.)의 메소드에 대해서
```objective-c
[self a:[header]];
self.header.preve.next = [ [ Node alloc] init];
Node *headerNode = [self header]; //self.header
Node *preNode = [headerNode preve]; //(self.header).preve
Node *nextNode = [preNode next]; // ((self.header).preve).next
nextNode = [ [ Node alloc] init ]; //(((self.header.preve).next = 객체

[ [ [ self header ] prove ] setNext : [ [ Node alloc ] init] ] ;

// 결국 . 이란 메소드를 불러오는 것이다. 
```

- 구조체 getter의 반환값은 구조체이다. 그래서 구조체. 구조체 변수는 사용이 가능하다.

#### iOS구조 파악
***
- 샌드박스 구조이기 때문에 앱에 집중해서 앱의 속도가 빠르다.
- The Structure of an App - MVC(Model View Controller )
- Model = 데이터 관련된 클래스
- Controller = 데이터와 UI 사이에 위치
- View = UI ( User Interface )
- 하나의 클래스에 데이터, UI들 다 만들어서 UI만 바꾸려고 해도 클래스를 바꿔야 한다. 
- 그래서 클래스안에 디자인 관련 클래스를 분리하고, 데이터를 분리한것이다.

##### 앱실행 순서
- 터치 -> 하드웨어 -> OS -> UIApplication -> Application Delegate - > 화면 객체에게 명령 -> 객체가 실행
- 화면당 하나의 View Controller이 있다.
- Application Delegate -> 명령을 수행하는 역활 .
- 앱은 하나의 UIApplication 와 하나의 Application Delegate을 가지고 UIWindow도 하나이다.
-View Controller는 하나의 View만 가지고 있다.


#### UI Base Guide
***
- iPhone5 : 320 point , 568 point // 640px, 1136px
- 픽셀 4개로 1개의 point 표현 2X( iPhone 5 )
- 픽셀 9개로 1개의 point 표현 3X( iphone 6plus) 
- 뷰의 위치는 상대적으로 상위뷰를 기준으로 위치를 잡는다.
- add된 시간을 기준으로 뷰의 계층 순서에 따라서 된다.

#### 프레임워크
***
- 애플리케이션 프레임워크(Application Framework)는 프로그램잉에서 특정 운영 체제를 위한 응용 프로그램 표준 구조를 구현 하는 클래스와 라이브러리 모임이다. 간단하게 프레임워크라고도 부른다.
- 재사용할 수 있는 수많은 코드를 프레임워크로 통합함으로써 개발자가 새로운 애플리케이션을 위한 표준 코드를 다시 작성하지 않아도 같이 사용된다.
- 프레임워크의 구현은 객체지향 ㅍ로그래밍 기법이 사용되고 있는 응용 프로그램 고유의 클래스가 프레임워크의 기존 클래스를 상속할수 있다.

#### UIResponder 
- 사용자의 이벤트를 응답한다. ( 터치에 관련된 정보가 있다 )

##### UIView Class

- 가장 기본이 되는 View 로서 view등중 최상위 이다.
- UIComponent 들의 조합으로 화면이 구성되며 UIView 를 상속 받았다. 즉 iOS 화면구성은 UIView의 집합으로 되어있다.

```objective-c
//x 좌표, y좌표, 가로길이, 세로길이
CGRect frame = CGRectMake(x,y,width,height);
CGSizeMake(width, height), CGPointMake(x,y);

//
CGRect frame; x,y,width,hegith

CGPoint center; view의 가운데 x, y 좌표값을 가져옴.
CGFloat alpha; 불투명도

(void)removeFramSuperview;          // 부모에게서 나가는 것이다 ( 가출 느낌 , 자신의 뷰 삭제 )
(void)addSubview:(UIView *)view;     //view를 자식으로 만드는 것. ( 입양 느낌 )
```

#### Day21. UIControl , Delegate 

#### review
***
##### Algorithm

 - selected sort
 - insert sort
 - bubble sort
 - merge sort
 - quick sort

#### View
***
##### UIKit Framework
 - Cocoa Touch Framework에 추가된  UI관련 기능의 클래스가 모여있는 Framework
 - #import <UIKit/UIKit.h> 로 추가한다. 

##### UIView

 - 가장 기본이 되는 View -> 투명한 사각형이다.
 - UIComponent들의 조합으로 화면이 구성되며 UIView를 상속 받았다.
 - 즉  iOS화면 구성은 UIView의 집합으로 되어있다.

UIView 속성
 - label.font.size하면  폰트의 사이즈를 가져온다.
 - NSLineBreakMode -> 줄바꿈 ( width를 판단해서 넘어가면 되도록 한다. )
 - 기본줄이 1인것을 바꿔서 줄을 늘린다.

#### UIControl
***
 - UIConponent에 사용자 인터렉션에 의한 응답에 대해 특별한 액션을 줄수 있게 설정하는 클래스
 - normal( 아무것도 실행하지 않았을때 )
 - selected( 선택 여부 표시 ) -> 설정해 주어야함
 - highlighted( 누르고 있을때 ) -> 자동으로 바뀜

``` objective-c
// UIControl 에서 UIButton, UISwitch, UISlide 에서 자주 쓰임
-(void)addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

[btn addTarget: self action:@selector(touchUpInsideOKBtn) forControlEvents:  UIControlEventTouchUpInside]
```
 - 버튼이 눌리면 btn의 self 자기 자신이 타겟이고 touchUpInsideOKBtn에 자기자신의 객체를 넣고 어떤 이벤트에서 실행되는지 쓰게 ㅗ딘다. 
 - SEL -> 함수의 포인터 (c에서의 함수형 포인터 )
 - @selector(메서드 이름)
 - sel에는 직접 만든 메서드의 이름이 들어가며 그 메서드의 매개변수로는 UIButton을 받는다.
 - sel에 입력된 메서드로 받는 매개변수는 target의 self값이 들어간다.

##### UIButton

 - 버튼 생성하는 클래스 메서드이다.  alloc init 대신 사용된다.
```objective-c
+(instancetype)buttonWithType:(UIButtonType)buttonType;
```
 - selected -> 단순 불값으로 선택 되었는지 안되었는지만 알려준다.
 - highlighted -> 선택하는중 이라는 것을 알려준다.
 - normal -> 기본상태이다.
 - 하나의 버튼에는 selected , highlighted normal 각각의 이미지를 저장할수 있어서 3개의 이미지를 저장할수 있다.

#### Delegate
***
##### protocol

 - 복수의 컴퓨터 사이나 중앙 컴퓨터와 단말기 사이에서 데이터 통신을 월활하게 하기 위해 필요한 통신 규약, 신호 송신의 순서, 데이터의 표현법, 오류 검출법 등을 정함.

##### delegate
 - 객체들은 서로 통신할때 메세지를 보내서 통신하고 그 메세지를 메소드로 보낸다 .
 - 프로토콜로 델리게이트를 만든다.
 - delegate는 시점을 나타내고, selector는 상황을 나타낸다.
 - delegate는 강제성이 있다. ( required, optional )
 - java의 interface와 콜백 함수와 비슷하다.
 - delegate는 중간에서 코드를 전달해 주는 역활이라고 생각하면 쉬운것 같다.
 
 


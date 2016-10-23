## Day27 Life Cycle
 ***
 
 ### Review
 ***
 
 - AutoLayout
 - SizeClass

### Life Cycle
***
#### NSObject Life Cycle

 - alloc : NSObject의 인스턴스가 메모리에 할당 될 때
(클래스 메소드는 클래스 자체에게 명령을 내리는 것이다.)

 - dealloc : NSObject의 인스턴스가 메모리에서 해제될 때
(인스턴스 메소드는 인스턴스 자체에게 명령을 내리는 것이다.)

#### 이런 과정을 배우는 이유

 - 메모리를 관리하기 위해서
 - ARC가 나타난 이후에는 중요도가 떨어졌지만 알고는 있어야 한다.
 - 오픈 소스에서는 dealloc을 쓸때도 있다.

#### Application Life Cycle

 - 앱도 거대한 객체이다.
 - Application object
 - core object ( 그냥 단순한 객체이다. 코드로 작성한 객체들 or 프레임웍의 객체등 모든 객체들  )
 
### UIViewController Life Cycle
***
 - UIViewCOntroller의 생명주기를 알고 있다면 적절한 타이밍에 원하는 것을 세팅해 줄수 있다.
 - 시스템에서 각각 메소드가 갖는 생명주기 타이밍에 맞게 메소드를 호출하게 된다.
 - 해당 메소드들은 프로그래머가 직접 호출하지 말아야 한다. 
 - 노버라이드 하는 메소드이므로 꼭 해당 메소드내에서 [super 메소드이름]을 통해 기존 메소드를 꼭 호출해 주어야 한다. 

Disapperted - > Appearing -> Appered -> Disapearing -> Disapeared -> ...

#### KeyWindow

 - AppDelegate가 UIWindow를 관리한다.
 - 기기에 따라서 처음 시작 스토리보드를 다른게 만들수 있다.( 프로젝트의 general 에서 설정해 준다 )

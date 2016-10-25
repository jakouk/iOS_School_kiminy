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
 
#### app 실행 과정
- User taps app icon -> main() -> UIApplicationMain() -> Load main UI File -> First initialization -> Restore UI state -> Final initialization -> Active the app (초기화는 first, final까지의 3단계 과정이다 ) 


### UIViewController Life Cycle
***
 - UIViewController의 생명주기를 알고 있다면 적절한 타이밍에 원하는 것을 세팅해 줄수 있다.
 - 시스템에서 각각 메소드가 갖는 생명주기 타이밍에 맞게 메소드를 호출하게 된다.
 - 해당 메소드들은 프로그래머가 직접 호출하지 말아야 한다. 
 - 오버라이드 하는 메소드이므로 꼭 해당 메소드내에서 [super 메소드이름]을 통해 기존 메소드를 꼭 호출해 주어야 한다. 

Disapperted - > Appearing -> Appered -> Disapearing -> Disapeared -> ...

```objective-c
- (void)loadView {
    //UiViewController의 view가 생성될 때 호출
}

- (void)viewDidLoad {
    /* UiViewController가 인스턴스화 된 직후 (메모리에 객체가 올라간 직후) 호출
    처음 한 번 세팅해 주어야 하는 값들을 넣기에 적절 */
}

- (void)viewWillAppear:(BOOL)animated {
    /* view가 화면에 보여지기 직전에 호출
    화면이 보여지기 전에 준비할 때 사용
    animated 파라미터는 뷰가 애니메이션을 동반하여 보여지게 되는지
    시스템에서 전달해 주는 불리언 값 ( 화면이 나올때 마다 반복 실행됨 ) */
}

- (void)viewWillLayoutSubviews {
    /* view의 하위뷰들의 레이아웃이 결정되기 직전 호출 */
}

- (void)viewDidLayoutSubviews {
    /* view의 하위뷰들의 레이아웃이 결정된 후 호출
    주로 view의 하위뷰들이 사이즈 조정이 필요할 때 호출 */
}

- (void)viewDidAppear:(BOOL)animated {
    /* view가 화면에 보여진 직후에 호출
    화면이 표시된 이후 애니메이션 등을 보여주고 싶을 때 유용 
    (반복적으로 호출됨 )*/
}

- (void)viewWillDisapper:(BOOL)animated {
    // view가 화면에서 사라지기 직전에 호출 
}

- (void)viewDidDisapper:(BOOL)animated {
    // view가 화면에서 사라진 직후에 초훌 
}
```

#### KeyWindow

 - AppDelegate가 UIWindow를 관리한다.
 - 기기에 따라서 처음 시작 스토리보드를 다른게 만들수 있다.( 프로젝트의 general 에서 설정해 준다 )

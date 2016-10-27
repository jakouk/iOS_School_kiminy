## Day30 Navigation Controller & TabBar

### Review
***
- present ( Modal )
- navigateController
 -  UITableViewController는 잘 안씀
 - RootView컨트롤로의 크기는 디바이스 전체크기가 되기 때문이다.
 - Controller가 2개 쓰일때는 2가지 기능이 쓰이고 UI가 변화될때 사용된다.

### Navigation Controller
***
 - UINavigationController class
 - Navigation Conrollers  Manage Stacks of Other View Controllers ( 스텍구조 )

### NavigationBar
***
 - 네비게이션 인터페이스를 관리하는 뷰
 - navigation bar의 외관은 customize할수 있지만 frame, bounds, or alpha values는 절대 직접 바꿀수 없다.
 - UX적으로 최적의 크기인 Height가 44point로 고정되어있다.
 - BarButtonItem에 넣어야  button등을 추가할수 있다.

### ToolBar
***
 - 뷰컨트롤러의 부가적 기능을 위해 ToolBar 를 활용할수 있다.
 - 기본옵션은 hidden이다. (toolbarHidden = NO) ( 숨겨져 있음 )
 - 기본 속성 barButtonItem이다.

### TabBar
***
 - 각각의 ViewController를 각 TabBar Item에 매칭 되어있다.
 - TabBarItem은 이미지와 텍스트를 넣을수 있다.
 - 각 TabBar Item은 해당 ViewController의 tab BarItem 프로퍼티로 접근 가능하다.

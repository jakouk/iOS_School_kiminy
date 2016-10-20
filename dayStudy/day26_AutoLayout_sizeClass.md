y26 AutoLayout & SizeClass
### Review
***
 - MVC
 - StoryBoard -  IBoutlet, IBaction
 
#### Delegate
 - 델리게이트는 프로토콜이 원하는 것을 하는 해주는 객체가 되는 것이다.
 - 뷰컨트롤러가 델리게이트가 될 가능성이 높다.
 - 델리게이트는 부가적으로 기능을 해주는 객체라고 생각해 주면 쉽다.

### Auto Layout
***
 - based on constraints  제약 사양이 있다.
 - contraint- 각 뷰의 거리, 길이, 위치등을 표현하기 위한 제약
 - View Boundary
 - Leading , Trailing, Top, Bottom (앞, 뒤, 위, 아래 )
 - 뷰들간의 상대적인 거리로 만든다.
 - 제약사항이 중요하다.
 - 화면 배체의 기준이 되는 뷰를 잡고 시작하는것이 좋다.
 - 제약 사항은 자신의 의도에 따라 천차만별이다.
 - AutoLayout을 사용하면 statusbar를 고려해서 위치를 정하게 된다.
 - y = mx + C ( 공식 )

#### SizeClass
***
 - 특정 화면 크기와 방향을 나타내는 것이 아니라 폭과 높이를 Compact, Regular라는 사이즈로 구분한것

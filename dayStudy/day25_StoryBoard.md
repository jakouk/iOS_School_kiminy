### Day25 StoryBoard
***

#### Review
***
- reuse(재사용)
- table Accessory
- tableView Editing

#### Storyboard
***
 - Xcode에서 UI와 UX를 손쉽게 구성할 수 있도록 마련한 도구
 - 화면의 구성과 흐름 파악 가능
 - 코드와 직접 아울렛 및 액션을 연결 가능

#### 아울렛
***
 - IB(Interface Builder)와 코드를 연결해 줄 수 있는 IB를 위한 것
 - IBOutlet, IBAction 등등

##### Interface Builder ( IB )
 - 과거 Xcode에는 IB가 내장되어 있지 않았다.
 - 외부 툴로 따로 존재했었다.

##### objective Library

 - IB 에 올릴수 있는 객체의 모음
 - IB 호면 우측 하단
 - IB 필드를 통해 검색 가능
 - StroyBoard를 여러 화면이 중복적으로 사용될때
 - viewControl와 연결해서 사용할수 있다.
 - StroyBoard 위에 ViewController 의 객체를 올려놓은것 이다.  ( alloc init 해서 )

#### IBOutlet
***
 - 클래스의 UI관련 프로퍼티와 IB(스토리보드 또는 xib)의 객체와 연결할 수 있도록 도와주는 키워드
 - @property IBoutlet UILabel *nameLabel;
 - setHide 숨기는 기능임
 - removeSuperView 뷰를 숨기는 것임.

#### IBAction
***
 - 클래스의 특정 메소드와 스토리보드의 이벤트(액션)와 연결해줄 수 있도록 도와주는 키워드
 - 하나의 버튼에도 여러개의 액션이 들어갈수 있음.
 - addTarget : self 는 이 클래스라는 뜻이다. 
 - IBOutlet 은 1:1 연결
 - IBAction 은 N:N연결이다 .

#### MVC Design Pattern
***
 - Model - View - Controller 모델
 - 프로그래밍 디자인 패턴의 하나
 - 자료 저장소, 뷰, 컨트롤러를 분리하여 구현하는 형태
 - 화면에 보이는 것은 UIView View는 보여주는 역활만 한다.
 - ViewController는 관리하는 View가 꼭 1개 이상 있어야 한다.
 - self.view addSubview : 의 의미는 self(ViewController).view 라는 뜻이다.
 - 화면 전환은 뷰 컨트롤러가 변화되는 것으로 보면 된다.
 - 컨트롤러가 뷰의 액션을 받는다.
 - Controller는 눈에는 보이지 않지만 뷰를 컨트롤 한다.

#### Protocol
***
 - 어떤 상황에 대해서 미리 약속된것
 - delegate 가 되는 것은 ViewController 이다.
 - 결국 TextField가 ViewController 에게 일을 위임하는 것이라고 생각하면 된다.
 - <TextFieldDelegate> 라고 하는 것은 TextField에서 정한 protocol을 사용한다는 의미이다.

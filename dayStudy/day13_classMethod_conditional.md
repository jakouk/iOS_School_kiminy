#### **Day13. classMethod conditional**


#### Review
***

- 초기화 메서드 (  init )

##### #import vs @class
- #import는 보통 직접적으로 참조하는 객체의 메서드나 변수에 접근할때 사용
- @class는 객체 자체의 주소값만이 필요할때 사용
- #import 자체가 컴파일에 부담을 주기 때문에 직접 접근이 없으면 @class사용
- @class는 주로 헤더에서 사용하고 #import는 구현부에서 사용한다.

#### Objective-C Class File
***
- .h 헤더 파일 - 클래스, 타입, 함수, 메서드등이 정의 되어있음.
- .m 소스파일 - Objective-c 파일 c파일 컴파일
- .mm 소스파일 - Objective-c와 c++ 파일 컴파일 가능

#### 헤더파일 추가
***

- #import 지시어로 사용
- Framework의 경우는   <Framework>로 사용된다.( 꺽새로 사용 )
- 다른 클래스의 경우는 “ Classfile.h”로 해더파일을 추가 가능하다. (.m 파일은 참조 불가 )
- 해더 파일이 import 되어야 다른 클래스의 객체 생성 및 사용이 가능하다.

##### import vs Override
- import는 어떤어떤 프로퍼티나 메서드를 컴파일러가 알려주는 것이다.
- 상속이 더 코드 카피에 관련된 것이다.
- 이름이 같은 메서드가 있어도 만들수가 있다.

pcs 미리 헤더파일을 앱 실행과 동시에 컴파일러에게 알려주는 것이다.

#### @class사용
***

- 해당 클래스의 존재를 알려준다.
- 실제 사용하기 위해서는 @implementation 에 #import시켜야 한다.
- 주로 헤더에서 사용된다.
- **두클래스를 서로 import하게 된다면 서로가 서로를 계속해서 반복하면서 부르기 때문에 어느 한쪽이 상위가 된다.**

#### 선언부 - interface
*** 
- 클래스를 선언한다. ( 상속 관계와 프로토콜 선언 )
- 객체와 통신할 메서드를 선언한다.
- Property변수를 선언한다.
- .h파일안에 작성된다. ( .m 파일에서 작성되면 은닉화 이다 ) 

```Objective-C
// property 는 메모리에 관련된 옵션을 가질수 있다. 
@property (nonatomic, strong) NSString *name;
```
- 원래 property는 메서드로 name이라는 property를 만들면 getName, setName, NSString name 이렇게 3개가 만들어 진다.

#### 구현부 implementation
*** 
- 클래스의 메서드를 구현하는 실제 코드가 담겨있다.
- .m파일에 작성된다.
- 프로퍼티는 interface안에서만 만들수 있다.
- 프로퍼티는 원래는 메서드이다.
- 그래서 프로퍼티로 만들게 되면 setter, getter 변수 자체 총 3가지가 만들어 진다.

#### 메소드
***
- 컴퓨터가 수행할 명령어
- 인스턴스에 적용되거나, 클래스에 적용되는 행동으로 나눌수 잇다.
( 객체와 통신을 한다는 의미에서 메서드라고 한다. )
- 객체는 보통 객체 자신만 접근 가능한 정보를 포함하는데, 메서드는 이 데이터에 접근하고 수정하는 방법을 제공한다.
- 메소드 타입 ( +, - ) (-)인스턴스 메소드, (+)클래스 메소드
- 메소드는 반환타입, 메소드명, 매개변수(파라미터)로 이루어져 있다.

```objective-c
- (NSInteger)doubleNum:(NSInteger)number{

//행동 : 입력된 숫자를 2배 해서 반환해준다.
return number *2;
}
```
##### 클래스 메소드
- 인스턴스 속성에 상관 없이 클래스 자체에 필요한 행위를 정의 할때 사용
- [클래스이름 메소드이름]
- 프로퍼티가 없기 때문에 받은 데이터로 바로 실행해야한다.
- 클래스내의 프로퍼티를 사용하지 않는 메소드는 클래스 메소드로 만드는 것이 좋다.

```objective-c
+ (NSInteger)absoluteNum:(NSInteger)number{
NSInteger absoluteNumber = 0;
if(number<0){
absoluteNumber = absoluteNumber * (-1);
}
return absoluteNumber;
}

//alloc이 클래스 메소드 이다.
NSString *name = @“joo”;
NSString *myName = [NSString stringWithFormat:@“my name is %@“,name];
NSString *myNameinit = [ [ NSString alloc] initWithFormat:@“my name is %@“,name ];
```
##### 인스턴스 메소드

- 인스턴스에서 사용되는 행위로 대부분 메소드가 해당된다.
- [object instanceMethod];


##### 케스팅(casting) 
- 케스팅이란 형변환을 해주는 것으로 정수타입을 실수타입으로 바꾸는것 처럼 원래의 타입에서 다른 타입으로 바꾸는 것을 말한다. 


#### 조건문
***

- 대표적인 조건문으로 if-else문과 switch-case 문이 있다.

##### if문
- 함수 내부에서 실행되는 선택문
- 특정 조건에 따라 선택적으로 코드를 실행시킨다.
- if문은 메소드 안에서 만들수 있다.
- if안에 만든 변수는 if안에서만 사용할수 있다.
- if문의 조건에는 비교연산자를 통해서 bool값을 만들어야 한다.

##### switch 문

- 상태값을 비교를 한다.
- switch의 상태값은 정수만 가능하다.
- break문으로 상태를 탈출한다.

```objective-c
switch ( 상태값 ) {
case 상태값 1:
//해당 상태값일때 실행될 내용
break;
case 상태값 2:
//해당 상태값일때 실행될 내용
break;
default :
//해당되는 상태값이 없을때 실행될 내용
break;
}
```

##### 비교 연산자

```objective-c
==  / A == B / A와 B가 같다.
>=   / A >= B / A가 B 보다 크거나 같다.
<=  / A <= B / A가 B 보다 작거나 같다.
>    / A > B   / A 가 B보다 크다.
<   / A < B    / A 가 B 보다 작다.
```

##### 논리 연산자

```objective-c
&&  / A 조건  && B 조건  / A 조건이 참이고, B조건이 참이면 참이다.
| |   / A 조건 | | B 조건   /  A조건이거나, B조건 둘중에 하나가 참이면 참이다.
!     / !(A조건 | | B 조건 )  / 조건의 반대 ( 참 -> 거짓 , 거짓 - > 참 )
```

- **논리 연산으로 어떠한 값을 찾을때는 집합으로 생각하면 쉽게 풀릴수 있다.**


#### Tip
***
- option + command + / = 자동 quickHelp 주석 생성
- control + command + 위아래 방향키 =  클래스의 헤더파일 구현파일 이동

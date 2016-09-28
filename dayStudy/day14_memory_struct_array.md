#### **Day14. memory & struct array**

#### Review
***
- #import vs @class
- classMethod
- if- then

#### 자료구조
***
##### 메모리구조

- Stack - 지역 변수, 매개변수등
- Heap -  동적 할당을 위한 영역 ( alloc 의 객체가 만들어 지는 곳 )
- Data  - 전역변수, 정적변수가 저장 ( static 으로 사용함 )
- Code  - 프로그램 code저장

##### 메모리 설명
- Data 와 Code는 프로그램이 종료될때 까지 사라지지 않는다.
- Heap은 객체가 생성되는 곳이다.
- Stack은 변수가 계속해서 생겼다 사라지는 곳이다.
- 객체를 heap에 만드는 이유는 메모리를 낭비하지 않기 위해서 이다.

```objective-c
// 모두 stack 에 생성된다.
NSInteger  a = 4;
NSInteger b;

// *person은 stack에 생성 되고 [ [Person alloc] init ] 은 Heap에 생성된다.
// 객체자체는 힙에 생성되는것이다.
Persion *person = [ [ Person alloc] init ];

//const는 상수로 한번 값을 주면 변하지 않는다.
//Data 에 생성되며 프로그램이 종료되지 않으면 없어지지 않는다.
const NSInteger number = 5;

//num1, num2 모두 stack에 생성된다.
-(NSInteger)sumTwoInteger : (NSInteger)num1 : num2:(NSInteger):num2
{
NSLog(@“%ld”,num1 + num2)
return num1 + num2;
}
```
- 모든 코드는 code영역에 저장된다.

#### 메모리 관리법
***
- 자바는 가비지 컬렉터가 연결이 끊어진 객체를 잡아 먹음.
- 오브젝티브 C 레퍼런스 카운터가 0 이되면 객체가 없어짐.
- **오너쉽**,
**소유권**(소유권이 참조하면 레퍼런스 카운터가 증가함),
**참조권**(참조권을 가진 사람이 보면 레퍼런스 카운터가 올라가지 않는다.  잠시 보는것으로 바라보고 있으면 사라지지 않는다 )
- 소유권을 가지고 있는 사람이 연결이 끊으면 객체가 사라지는데 참조하고 있는 존재가 아무리 많아도 사라진다.
- 프로퍼티의 옵션으로 소유권과 참조권을 줄수 있다.
- ( Strong, wick ) 스트롱은 레퍼런스 카운터가 되게 하는 것이다.
- ARC ( Automatic Reference Counting ) 으로 Counting을 해서 객체를 자동으로 관리해 준다.

#### Value & Reference
***
- 실질적인 값 저장( Value )  vs 참조하고 있는 주소값 저장( Reference / pointer )

##### ( * )에스터리스크

- 변수선언시 에스터리스크(*)는 주소값을 가지는 변수를 나타낸다.
- 변수 사용시 에스터리스크(*)는 변수의 값을 가르키며, 엔드(&)는 변수의 주소값을 나타낸다.
- Objective-C에서 사용되는 모든 Reference변수에는 (*)가 붙어 있다.

```objective-c
// b 는 a의 주소값을 저장하고 c는 b의 주소값을 저장한다.
NSInteger a = 10;
NSInteger *b = &a;
NSInteger **c = &b;

//모두 10이라는 값이 나온다.
NSLog(@“%ld”,a);
NSLog(@“%ld”,*b);
NSLog(@“%ld”,**c);
```

#### 구조체
***
- 서로 다른 타입의 데이터가 묶여 있는 데이터 구조
- 구조체는 Objective-C에서 사용되는 클래스는 구조체안에서 사용할수 없다. ( ARC 영향 )
- 구조체 만드는 형식[struct 구조체명 변수명]
- typedef <데이터타입> <이름>; 타입에 별명을 지어주는 키워드

```objective-c
//MyInteger 로 변경
typedef NSInteger MyInteger;
@property MyInteger age;

// p1 person으로 변경
typedef struct person person;
@property person p1;

typedef struct person{
NSInteger age;
CGFloat height;
}person
```

#### 구조체 vs 클래스
***

- 구조체는 할당 시 복사된다.
- 구조체가 새 변수에 할당되면 모든 데이터가 복사되고, 새 복사본을 수정해도 원래 복사본의 데이터는 변경되지 않는다.
- 구조체는 값 형식이고 클래스는 참조 형식이다.
- 클래스와 달리 구조체는 alloc을 사용하지 않고 인스턴스화 한다다.
- 구조체는 다른 구조체 또는 클래스에서 상속될 수 없으며, 클래스의 기본 클래스가 됳 수도 없다.

##### 구조체의 (.) vs 클래스의 (.)
- 구조체의 (.) 은 구조체 내부에 있는 변수에 접근하는 것이다.
- 클래스의 (.) 은 setter가 생략되어 있는 것으로 메소드를 통해서 접근하는 것이다.

##### _변수 vs self.변수
- _A 는 변수에 직접 접근하는 것이다.
- self.A와 같은 것이다.
- 차이점은 직접 접근이냐 참조해서 접근하는 것이냐의 차이점 같다.

#### 배열
***
- 배열은 번호와 번호에 대응하는 데이터들로 이루어진 자료 구조를 나타낸다.
- 배열에는 같은 종류의 데이터들이 순차적으로 저장되어, 값의 번호가 곧 배열의  - - 시작점으로부터 값이 저장되어 있는 상대적인 위치가 된다.

```objective-c
//objective-c 에서도 C방식의 배열선언이 가능하다.
type name [array range];
NSInteger intList[5] = {1,2,3,4,5};
```

- 선언 당시 데이터 사이즈를 정적으로 만들어야 한다. ( 동적 생성 불가 )
- index를 통해 데이터에 접근한다.
- 하나의 타입만 저장된다.
- Objective-c에서는 NSArray, NSMuableArray Class를 사용한다.

```objective-c
NSArray *array = @[@“world”,@“hello”];

NSMutableArray *objects = [ [ NSMutableArray alloc] init ] ;
//addObject 메소드를 이용해서 데이터를 넣는다.
[objects addObject:@“String”];
```

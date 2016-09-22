#### **Day10. DataType & FormatSpecifier & Polymorphism**

##### Review

- 클래스를 객체로 실체화
- 클래스의 실제 기능을 구현

##### 데이터 타입

- 데이터 타입은 주기억장치의 공간에 어떤 종류의 데이터가 담기게 될지를 나타낸다.
- 변수로 메모리 공간을 배정한다.

###### 불리언 표현
- BOOL
값 : YES or NO
``` objective-c
BOOL isBabyCute = YES;
```
###### 숫자표현

정수
- 부호가 있는 정수 : NSInteger

``` 0bjective-c
NSInteger temperature = 100;
```

- 부호가 없는 정수 : NSUInteger

``` objective-c
NSUInteger health = 100;
```

- Objective-C에서는 int를 사용하지 않습니다. ( 사용하지 않는 이유는 64비트 )

실수

- 32bit 실수 표현 :float
- 64bit 실수 표현 : double
- Core Graphic용 실수 표현 : CGFloat

``` objective-c
CGFloat weight = 33.5;
```

숫자객체형
- NSNumber ( 클래스 이다 )
- @뒤에 숫자를 써 주었던은 숫자를 객체로 사용한 것
- 객체형이 아닌 표현은 모두 [Value Type]이다
- Value Type을 직접 표현할 떄에는 포인터를 사용하지 않는다.
- Reference Type을 표현할 때에는 포인터를 사용한다.
- 서로 같은 의미이고 아래가 축약형이다.

``` objective-c

NSNumber *mana = [ [ NSNumber alloc ] initWithInt:100];
NSNumber *mana = @100;

```

###### 문자 표현
문자
- 단하나의 문자를 표현 : char [ Value Type]

``` objective-c
char word = ‘a’;
```

문자열
- 문장 또는 문단의 표현 : NSString [Reference Type];

```objective-c

NSString *name = [ [ NSString alloc ] initWithUTF8String:”kiminy"];

```

###### 객체타입
- 프로퍼티 또는 매개변수의 데이터 타입을 명시해 준 경우, 다른 타입의 값이 할당되거나 전달이 된다면 오류가 발생 가능
- id 는 모든 객체타입을 의미한다.
- id 타입은 반환값이 확실하지 않을때 사용하지만 많이 사용하지 않고 사용할 경우에는 문서로 남겨줘야 한다.
- 예를들면 반환값이 Warrior가 될수도 있고 Wizard가 될수도 있고 등등 말이다.
- 우리가 클래스를 만들것은 우리가 새로운 타입을 만들었다는 것이다.

##### 형식지정자

%@, %%, %d, %ld, %u, %lu, %x, %o, %f, %c, %s...

- %@ = 객체형 형식지정자
- %% = %를 표현할때 사용
- %ld = 부호가 있는 64비트 정수 표현시 사용
-  %lu = 부호가 없는 64비트 정수 표현시 사용
- %x = 16진수 변환시 사용
- %o = 8진수 변환시 사용
- %lf = 실수표현시 사용
- %s = 문자열시 사용

``` objective-c
NSLog(@“부호가 있는 정수 : %ld”,-123);
NSLog(@“부동수소 : %lf”,10.24f)

%7d, %07d, %+7d, %-7d
%.3f, %.+3f,%8.1f, %8.3f, %8.f
%s, %7s, %.3s
```

##### 확장 문자 (Escape Sequence)
\n, \t, \b, \f, \”, \’,\\

- \n = 줄바꿈
- \t = tab

##### Self
- 객체 스스로 자신을 지칭할 때 사용하는 키워드

- [self someMethod:value];
자신의 메서드 호출

- self.someProperty
자신의 프로퍼티 접근

##### 다형성
- 프로그램 언어의 각 요소들(상수, 변수, 식, 오브젝트, 함수, 메소드등)이 다양한 데이터 타입에 속하는 것이 허가되는 성질
같은 이름의 요소지만 실제 동작은 다르다.

#### **Day9. Object & Quick Help & Naming**

##### 클래스 생성

- 사람, 전사, 마법사 클래스 생성
main.m 에 import를 통해서 넣는다.
framework에서 가져온것은 < >를 사용한다.
- 객체생성 = [<클래스 이름> alloc]

- 초기화 = [<클래스 이름 init]
[ [ <클래스 이름> alloc ] init ]     =     [ < 클래스 이름 > new ]

- ```Person *me = [ [ Person alloc ] init ];```

- < 데이터타입 > *<변수이름> = <객체의 주소 >;
- 객체의 변수이름에는 그 객체의 주소값이 들어간다.

- 클래스, 구조체도 데이터타입을 만드는 것이다.

##### 메서드

- 메서드생성은 클래스.m파일에서 생성한다.
- 메서드호출은 [  객체변수 메서드이름 ]
메서드 호출은Objective-C에서 메세지를 보낸다 라고도 한다.

##### 매개변수

- 매개변수 ( 파라미티), 전달인자( 아귀먼트 )
메서드 정의
-( <반환 타임>) <메서드 이름 >: (<타입>) <내부 이름>
<외부이름>:(<타입>)

- 선언부
``` objective-c
@interface Person : NSObject

@end
```

- 구현부
``` objective-c
@implimentation Person

@end
```
- 메서드
``` objective-c
-(id)runTO : (id)localtion byspeed:(id)speed with:(id)someone
```
이런 식으로 사용된다.

- 클래스생성 & 객체생성
클래스 생성 -> 
프로퍼티, 메서드 정의 ( 클래스.h ) -> 
메서드 구현 ( 클래스.m ) -> 
객체 생성 ( main.m ) ->
객체로 프로퍼티에 값 input or 객체로 메서드 불러옴

##### Objective-C 네이밍 규칙

1  명확성
1) 확실한 대상등 모든 의미 표현
2) 축약하지 마라
3) Info처럼 확실한것은 가능
4) API이름 확실히하고 이중해석이 가능한것은 쓰지마라.

2 일관성
1) 프로그램 전체에 일관적인 언어사용
2) 서로다른 클래스에서 동일한 역할을 수행하면 메서드 이름을 같게하라.

3 자기 설명 금지
1) 자기자신 설명하는 이름 쓰지 않는다.
2) 마스크 상수( 비트 연산에서 혼용가능) 노티피케이션 이름은 예외

##### 퀵헬프 주석

- 클래스를 퀵헬프에 등록하는 주석
``` objective-c
/**
* 싸움을 위해 탄생한 전사
* 힘이세고 마법력이 약합니다
* 체력이 높고 마력이 낮습니다.
* @discussion 전사가 갖출 능력에는 또 뭐가 있을까
* @author yagom
*@version 0.1
*/
@interface Warrior : NSObject
```

- 프로퍼티를 퀵헬프에 등록하는 주석
``` objective-c
/// 이름
@property NSInteger health;
```

- 메서드는 퀵헬프에 등록하는 주석
``` objective-c
/**
*to에게 물리 공격을 가합니다.
* @param to 공격을 당할 대상
* @return 반환은 나중에 배웁니다.
* @author yagom
* @version0.1
*/
- (id)physicalAttack:(Wizard *)to;
```

#### **Day11. Subclassing & Override & informationHiding**

##### Review
***
- 데이터타입

- 다형성

##### 객체지향 프로그래밍
***
- 클래스(Class)  - 같은 종류(또는 문제 해결을 위한)의 집단에 속하는 속성(attribute)과 행위(behavior)를 정의한 것으로 객체지향 프로그램의 기본적인 사용자 정의 데이터형( user define data type)이라고 할 수 있다.

- 객체(object) - 클래스의 인스턴스(실제로 메모리상에 할당된 것)이다. 객체는 자신 고유의 속성(attribute)을 가지며 클래스에게 정의한 행위(behavior)를 수행할 수 있다. 객체의 행위는 클래스에 정의된 행위에 대한 정의를 공유함으로써 메모리를 경제적으로 사용한다.

- 메서드(Method), 메세지(Message) - 클래스로부터 생성된 객체를 사용하는 방법으로 객체에 명령을 내리는 메시지라 할 수 있다. 메서드는 한 객체의 서브루틴(subroutine) 형태로 객체의 속성을 조잗하는 데 사용된다. 또 객체 간의 통신은 메시지를 통해 이루어진다.

##### 클래스
***
- 객체를 생성하는 틀로서 속성을 뜻하는 프로퍼티와 행위를 뜻하는 메서드(메세지)를 가지고 있는 것이다.
- 프로퍼티 = 속성 / 메서드 = 행위

##### 클래스 상속
***
- 상속  = Subclassing ( inheritance )
- 새로운 클래스가 기존의 클래스의 자료와 연산을 이용할 수 있게 하는 기능
- 기존에 구현되어있는 클래스를 확장, 변형
- 부모클래스(super class, parent class)와 자식클래스(sub claaa, child class)로 관계를 표현
- 상속 할 수록 더 확장되는 구조/ 즉, 자식이 기능이 더 많은 가능성이 크다.
- 알고리즘의 트리구조 와 비슷하다.

```objectivec
@interface Car : NSObject //<- 부모 클래스

@property NSString *name;
-(void)setColor:(UIColor)color;
@end

//GameCharacter를 상속받은 모든 객체들을 GameCharacter * 자리에 넣을수 있다.
//Warrior or Wizard 모두 가능하다.
-(id)physicalAttackTo:(GameCharacter *)someone{
NSLog(@“%@를 공격해라”,someone.name);
return nil;

}

Student * mickey = [ [ Student alloc ] init ];
Student * minny = [ [ UniversityStudent alloc ] init ];     //맞는 문장이다. 모든대학생은 학생이다.
UniversityStudent * jacket = [ [ Student alloc ] init ];     //틀린 문장이다. 모든학생은 대학생이다.
```

##### NSObject
***
- Objective-c에서 가장 기본이 되는 클래스
- alloc, init 메서드가 NSObject에 정의되어 있다.
- Objective-c의 모든 클래스는 NSObject를 상속 받아야 한다. ( NSObject를 상속받지 못하면 객체가 생성되지 않는다.)
- 모든 클래스의 최상위 루트 클래스이다.

##### 재정의
***
- 영어로 override(오버라이드)
- 부모 클래스에서 물려받은 성질을 그대로 사용하지 않고 자식클래스에게 맞는 형태 또는 행위로 변경하여 사용할 수 있는 기능

```objectivec
//Person에 구현되어있는 eat메서드
- (id)eat:(NSString *)food{
NSLog(@“집에서 %@을(를) 먹었다.”,food);
return nil;
}

//Student에 구현되어있는 eat메서드
-(id)eat:(NSString *)food{
NSLog(@“급식중 %@을(를) 많이 먹었다.”,food);
return nil;
}

//UniversityStudent에 구현되어있는 eat메서드
-(id)eat:(NSString * )food{
NSLog(@“학식중에 %@만 먹었다.”,food);
return nil;
}
```

Person이라는 곳에 있는 eat이라는 메서드를 Student와 UniversityStudent에서 같은 이름이지만 다르게 구현 할수 있다.

```objectivec
//사람 클래스로 만들어지만 결국 스튜던트객체이다.
Person *mickey = [ [Student alloc] init];

//사람 클래스로 만들었지만 결국 대학생 객체이다.
Person *miny = [ [ UniversityStudent alloc] init ];

//사람 클래스
Person *mili = [ [ Person alloc ] init ];

// Student 클래스의 재정의한 eat 메서드가 나온다.
[mickey eat:@“고기”];

//UniversityStudent 클래스의 재정의한 eat 메서드가 나온다.
[minny eat:@“튀김”];

//Person클래스의 eat 메서드가 나온다.
[mili eat:@“떡볶이”];
```

#####  다형성
***
- 다형성이란 메소드의 같은 이름으로 다른 기능을 하는것
- 재정의(override)와 중복정의(overload)는 oop의 다형성의 또다른 모습
- Objective-C는 중복정의 (Overload)를 지원하지 않는다. (스위프트는 중복정의를 지원한다 )


##### self / super
***
self

- 객체 스스로 자신을 지징할 때 사용하는  키워드

//자신의 메서드 호출
[self someMethod:value];

//자신의 프로퍼티 접근
self.someProperty

super

- 객체의 부모 클래스의 요소에 접근할 때 사용
- 부모위의 부모 클래스에도 접근할때도 super를 사용해서 접근할수 있다.

```objectivec
//부모클래스에 정의된 메서드 호출 ( 오버라이드 되기 전 메서드 )
[super someMethod:value];

//부모 클래스에 정의된 프로퍼티 접근(  오버라이드 되기 전 프로퍼티 )
[super.someProperty]

//Animal 클래스의 cry메서드
-(id)cry:(Animal *)soundKind{
NSLog(@“%@은 이렇게 웁니다. %@“,self.name,soundKind.crySound);
reutnr nil;
}

//Animal을 상속받은 Dog클래스의 cry메서드
-(id)cry:(Animal * )soundKind{
[super cry:soundKind];
NSLog(@“%@은 이렇게 웁니다. %@. 참고로 강아지 입니다.”,self.name, soundKind.crySound);
return nil;
}

//출력하면 슈퍼클래스의 cry에 구현되어있는 메서드도 같이 나온다.
```

- 슈퍼 클래스는 부모의것을 받는 것이다.
- 재정의 했더라도 부모의 메소드를 받아 올 수 있다.

##### 은닉화
***
- 다른객체가 프로퍼티에 직접접근할수 없도록 만든것
- 헤더의 프로터피를 구현 파일로 옮긴다.

```objectivec
//
//     GameCharacter.m
//     구현부에 프로퍼티를 만든다. 

#import “GameCharacter.h"

@interface GameCharacter()

// 체력
@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;

@end

@implementation GameCharacter

///
///     GameCharacter.h
///

@interface GameCharacter :NSObject

//readonly를 통해서 읽을수만 있게 만든다. 
@property (readonly) id health;
@property (readonly) id mana;
@property (readonly) id physicalPower;
@property (readonly) id magicalPower;
````

- 우리가 구현부 파일(.m)쪽으로 숨긴 프로퍼티는 외부 객체에서 함부로 수정할수 없다.
- 외부에서 객체의 프로퍼티값을 수정하는 대신, 해당 객체가 스스로 프로퍼티를 관리할 수 있도록 변경한다.
- 메서드를 통해서 값에 접근할수 있도록 만들어야 할것 같다 ( 자바의  getter, setter 비슷한것 같다 )
`

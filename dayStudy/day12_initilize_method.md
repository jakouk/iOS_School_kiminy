#### **Day12. Initilize Method**

##### Review
***
- 상속 ( subClassing )
- 재정의 ( override )
- 은닉화 ( Information-Hiding)

##### 초기화 메서드
***
- 초기화란 메모리를 할당 받은 객체에 들어있는 쓰레기값을 정리하는 것이다.
- Objective-C 에서는 초기화 메서드를 직접 만들수 있다. 
- 초기화 메서드의 이름에는 init이 반드시 들어가야 한다.
- 가장 기본적인 초기화 메서드는 NSObject의 init메서드 이다.
- 반환은 self로만 해야 하면 반환 타입은 instancetype 이다. ( 2014년도 이전에는 id 타입이었다 )
- 객체를 생성할때 ```[[NSObject alloc]init]```을 사용하는 대신에 ```[NSObject new]```를 사용할수도 있지만 new키워로 객체를 생성하면 직접만든 init 메서드를 사용할수 없다.

``` objective-c
-(instancetype)init{
self = [super init];
if(self){
//Initilize self
}
return self;
}
```

- 초기화와 동시에 원하는 값을 할당해 줄수 있다.

``` objective-c
///  int 초기화를 하면서 name과 isHandsome 이라는 값을 넣어 주었다.

-(instancetype_ initWithName:(NSStrign *)name isHandsome:(BOOL)isHandsome{
//init 함수는 반드시 [super init]을 상속해서만 재정의 할수 있다.
self = [super init];
self.name = name;
self.isHandsome = isHandsome;

return self;
}
```

- 초기화 메서드도 상속을 받아서 사용할수 있으며 재정의도 할수 있다.
- 상위 클래스에서 만든 메서드도 사용할수 있고 현재 클래스에서 만든 메서드를 확장해서 만들수도 있음.

```objective-c
-(instancetype)initWithName:(NSString *)name city:(NSString *)city mobileNumber:(NSString *)mobileNumber age:(NSInteger)age schoolName:(NSString *)school{

//두개의 메소드를 상속받아서 하나의 메소드로 만듬.
self = [super initWithMobileNumber:mobileNumber age:age];
self = [super initWithName:name location:city];

//쓰레기 값을 치워주는 것이다. 모든 값을 초기화하는 것이 아니라 쓰레기값만 초기화함. 오류가 나지는 않지만 이렇게 사용하지는 않음. 오류가 날수도 있음.
self = [super init];
self.school = school;
}
```

- NSString 은 NSObject를 상속받아서 만들어진 클래스.
- NSString에도 NSObject 의 init 메서드를 재정의한 init 클래스 들이 많이있음.
- NSString에서는 ```  -(instancetype) initWithFormat:(NSString *)format  ```을 많이 사용함.

##### Tips
***
- shift + command + o = open quickly
- shift + command + 방향키 = 커서 위치 기준으로 방향키 부분 선택

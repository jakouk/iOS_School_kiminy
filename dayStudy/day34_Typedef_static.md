## Day34 Typedef & static

### Review
***
- NSNotification

### Typedef
***
```objective-c
 typedef NSString * NSNotificationName;
 ```
 - *을 사용하지 않고 바로 NSNotificationName으로 사용한다. 

### 상수
***
- 한번 지정한 값을 계속해서 사용하고 실수를 방지하기 위해서 사용한다.
- 앞으로 변하지 않을 값으로 확실하게 지정할때 사용한다.
- const라는 키워드를 사용하여 변수를 상수로 만든다. 

### 열거형
***
```objective-c
typedef NS_ENUM(NSInteger, DinnerMenu) {
    DinnerMenuPizza = 100,
    DinnerMenuPasta,
    DinnerMenuChicken,
    DinnerMenuRice,
};
```

### 옵션
***
```objective-c
typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
    UIViewAutoresizingNone    =                   = 0,
    UIViewAutoresizingFlexibleLeftMargin    = 1 << 0,
    UIViewAutoresizingFlexibleRightMargin  = 1 << 1,
    UIViewAutoresizingFlexbleTopMargin     = 1 << 2,
}
```
#### 옵션 vs 열거형
- 같은 숫자의 모음이지만 열거형은 1가지 선택이고 옵션은 다중선택이다. 
- 옵션은 or연산으로 다중선택할수 있다. 

### 매크로
***
- 전처리기(Preprocessor)의 일종인 #define을 사용하여 정의 
- 단순한 수식 또는 변치않을 값을 정의하는데 주로 사용
- 타입이 지정되지 않아서 위험할수 있다. 
- 전처리기 대신에 const로 사용하는 좋다. 

#### 카테고리 
원래 kit 메서드를 추가해서 넣는다. 
UIColor에 메서드 추가 등등 

### 정적변수
***
- 한번 생성하면 다시 생성되지 않는 변수
- 프로그램이 시작된 후 처음 생성되면 그 이후에 다시 생성되지 않는다. 
- static 키워드를 사용 (auto 의 반대 키워드)
- 메모리의 data영역에 생성된다. 
- 정적변수는 singleton 등에서 사용 
- 노티이름 만들기 등등 







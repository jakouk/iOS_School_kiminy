## Day33 NSNotification

### Review
***
- AlertController
- User Default

### Precompiled Header
***
 - 프로젝트 전역에서 공통적으로 사용될 내용을 미리 컴파일 해 둘 수 있는 헤더파일
 - 프로젝트를 빌드할 때 미리 컴파일 해 둔 후 캐시
 - 모든 소스코드에서 자동으로 import 

### KVO, NSNotification
***
 - 데이터가 변화될때 그 데이터를 사용하고 있는 객체가 업데이트 될때 사용됨.  
 - iOS 시스템 내에서 여러 사항이 발생했을때 들을 객체는 들으라고 만든다. 

#### Delegate vs NSNotification
 - 1:1 관계로 참조하고 있는 형태이다. 
 - textField.delegate = self
 - NSNotification은 1:N의 관계일수 있다. 


### NSNotification 
***
 - 노티피케이션 정보를 담은 수 있는 클래스
 - 수신자에게 각종 정보를 전달
 - 노티피케이션 이름
 - 노티피케이션 발송자
 - 수신자에게 필요한 정보 딕셔너리 (UserInfo)

``` objective-c
//노티 등록
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didShouldChangedSelector:) name:@"noti" object:nil];

//usrInfo 생성
NSDictionary *userInfo = @{@"textSize":self.previewLabel.font,@"textColor":self.previewLabel.textColor};

//노티 생성
[[NSNotificationCenter defaultCenter] postNotificationName:@"noti" object:nil userInfo:userInfo];
```


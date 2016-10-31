## Day32. singletone
### Review 

 - AlertController 
 - ImageView에 Gesture를 넣고 실행시키려면 user Interaction Edited을 체크해 줘야 한다. 

### UIImagePickerController

```objective-c
//image를 선택하면 실행
(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info 
```
### User Default

 - NSUerDefault 는 딕셔너리와 거의 비슷하다. 
 - 앱 마다 사용자가 지정하는 환경설정이다. 
 - NSUserDefaults는 실직적으로는 plist에 저장된다. 
 - 크기가 큰 파일들은 잘 넣지 않는다. ( 큰 파일을 넣으면 OS가 자체적으로 지울수도 있다 )

### Singleton Pattern

- 애플리케이션 전 영역의 걸쳐 하나의 클래스가 단 하나의 인스턴스만(객체)을 생성하는 디자인 패턴
 - 애플리게이션 내부에서 유일하게 하나만 필요한 객체에서 사용(셋팅,데이터등 )
 - 클래스 메소드로 객체를 만들며 static을 이용하여 단 1개의 인스턴스만 생성
애플리케이션 전역에서 공유하는 객체 생성 가능

### State Restoration

 - App Delegate
 - Restoration Idetifier 필요!
 ```objective-c
//세이브, 저장된것 불러옴.
-(BOOL)application : shouldSaveApplicationState:
-(BOOL)application : shouldRestoreApplicationState:

//각각의 View Controller
- (void)encodeRestorableStateWihCorder:
- (void)decodeRestorableStateWithCoder:
```

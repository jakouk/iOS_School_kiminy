## Day31. UIAlertController

### Review
***
- UITabBar
- UINavigationController

### UIAlertController
***
 - UIAlertController
 - UIActionSheet
```objective-c
//style에서 UIAlertActionStyleCancel은 1개만 선택해야한다.
UIAlertAction *cancleAction = [ UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                                        NSLog(@"사용자가 취소했습니다.");
                                                                                }];
```
 - inactive 상태는 system에서 alert이 되는 것으로 alertController와는 다르다. 

### 블럭(block)
***
 - 블럭은 하나의 함수고 action을 실행하는 함수이다.
 - handler -> 하나의 함수이다.
 -  유저가 action을 실행할때 실행될 코드의 블럭이다.
 - 블럭이란 함수인데 객체이다. (1급 객체)
```objective-c
void (^handlerBlock)(UIAlertAction *) = ^(UIAlertAction * _Nonnull action) {

}
```
#### Responder Chain
- 해당하는 객체가 메세지를 처리하지 않으면 상위 뷰에게 메세지를 전달하는 것을 뜻한다.
### User Interaction
***
 - User 의 Action이라고 생각하면 된다. 
 - 뷰가 제스쳐를 가지고 있지 않으면 그것을 부모에게 전달하지만
제스쳐를 가지로 있으면 부모에게 전달하지 않는다.

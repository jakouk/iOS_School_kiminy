Day22. UITextField & UIScrollView

#### Review 
***
 - Delegate
 - UIControl

#### Delegate
***
 - 델리게이트란 일을 넘기(위임)는 것이다.

#### UITextField
***
 - 사용자 텍스트 입력을 위한 UI Component
 - resignFirstResponder -> 현재 커서의 위치를 종료시킴
 - becomeFirstResponder -> 지정된 위치에 커서를 위치시킴

```objecive-c 
// return 을 누르는 시점에서 원하는 것을 할수 있다. 
-(BOOL)textFieldShouldReturn:(UITextField *)textField

//TextField가 시작되는 시저에서 원하는 것을 할수 있다. 
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
```
#### UIScrollView
***
 - contentSize -> 컨텐츠뷰 사이즈
 - contentOffset  -> 컨텐츠뷰의 좌표를 기분으로 투과되는 지점
 - bounces -> 이미지의 끝에 도달하면 바운스가 일어나는지를 아는 것이다.
 - pagingEnabled -> 이미지별로 끊어서 보게 하는 것이다.
 - minimumZoomScale  -> 축소 가능한 최대
 - maximumZoomScale -> 확대가능한 최대
 - contentOffset animated -> 이동하면서 에니메이션이 보이는것 .

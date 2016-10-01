#### **Day17. UILabel & UIImage**

#### review
***
 - iOS struct
 - UI base

#### UILabel
***
 - 계층 관계이기 때문에 부모의 계층의 것을 상속 받아서 바뀐다.
 - Label 위에 버튼을 올리면 반응이 없다.
 - atributeText으로 String를 중간중간 변형한다.
 - 디자이너들이 보내는 글씨의 크기와 개발자가 보는 크기는 다르기 때문에 1정도 크게 하는것이 좋다.
```objective-c
//UILabel의 속성들
UILabel *uiSix = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - 100, 380, 200, 30)];
    // label의 글자
    uiSix.text = @"폰트는 20입니다.";

      // label의 글자 위치
    uiSix.textAlignment = NSTextAlignmentCenter;

    //label의 글자 크기 ( 글꼴도 선택 가능 )
    uiSix.font = [UIFont systemFontOfSize:20];

    //label의 글자 색
    uiSix.textColor = [UIColor blackColor];
```
#### UIImageView
***
 - UIImage 는 데이터이고 UIImageView 는 View 이다.

##### ContentsMode

 - UIViewContentModelScaleAspectFill = 원본 크기의 비율에 맞추어서 화면 크기만큼 커짐
 - UIViewContentModelScaleAspectFit = 이미지의 비율에 맞게 커지면서 View의 최대 높이에 맞춤
 - UIViewContentModelScaleToFill =  View의 크기에 맞게 이미지가 커짐.
 
```objective-c
//UIImageView의 속성들
UIImageView *oneImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, oneView.frame.size.width, oneView.frame.size.height/3 *2)];

//UIImageVIew 위에 UIImage(데이터)를 올린다.
    [oneImg setImage:[UIImage imageNamed:@"super-mario-06.png"]];

//이미지 크기를 설정
    [oneImg setContentMode:UIViewContentModeScaleAspectFit];
    [oneView addSubview:oneImg];
```


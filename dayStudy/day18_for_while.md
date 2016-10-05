#### **Day18. for & while**

#### review
***
- UIImage
- UILabel
- autoresizing - 자동으로 상위뷰를 참조하여 만듬.
- 클래스 메서드는 self, super, property를 사용할수 없다.

#### 증감연산
***
- ++ 1씩 추가
- -- 1씩 빼기
- += 1씩 증가
- -= 1씩 빼기

#### while문
***
- 조건이 참일경우 구문반복실행
```objective-c
while(조건)
{
//구문 실행
}
```

#### for 문
***
- for문을 가지고 하는 행위중 많은 비율이 배열이나 딕셔너리에 있는 데이터는 가지고 오는데 있다!
- for문의 i값으로 하는 일은 배열의 데이터는 가져오는데 필요하다.

```objective-c
for(Counting 변수생성 ; 구문실행 조건 ; 변수 증감){
구문실행
}

for(NSInteger i = 0; i< 10; i+=1){

}
```
- swift에서는 ++, - - 가 사라졌고 += 을 대용으로 사용한다.

##### upgrade for문
```objective-c
NSArray *list = @[@“1”, @“2”, @“3”,@“4”];
//일반적인 for문
for(NSInteger i = 0; i<list.count; i+=1){

NSLog(@“%@“,list[i]);
}

//upgrade for문으로 list값이 다 출력될때 까지 나옴.
for(NSString *number in list){

NSLog(@“%@“,number);
}
```

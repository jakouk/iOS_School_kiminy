## Day38 Block

### Block
***
 - blocks are objective-c objects
 ( 객체이며, 메소드가 1개 있는 객체 )
 - c, c++, objective-c에 추가된 확장 문법이다. 
 - ^을 literal 문법으로 첫 시작시 사용한다. 
 - 외부값을 capture해서 사용한다. ( 만들어 질때 복사된다 )
 - 다른 프로그램 언어의 closures 나 lambdas와 같은 역활을 한다. 

```objective-c
int (^myBlock)(int) = ^(int num) { return num * multiplier; };
```

 - 함수에 이름이 없음 ( 객체에 함수가 1개 밖에 없기 때문에 < 무명함수 > )
 - 함수 자체를 변수로 사용한다는 것이다.  (함수형 포인터와 비슷)

#### Block 사용 방법 
 - typedef로 만들어서 블럭을 사용하면 사용하기가 훨씬 편리
 - 블럭은 기본적으로 객체라는 사실을 알아야 한다. 
 - property 에서는 block 안에서도 사용가능하고 그냥 메소드에서도 변환이 가능하다. 
 - 하지만 property로 주어야 할때는 weak를 사용해야 한다. 안그러면 reference 카운트가 증가된 이후에 감소되지 않을수 있다. 
 - ViewController * __weak wself = self;  를 통해서 만들어서 사용해야 한다. 

``` objective-c

//viewController 메소드
self.sample = [Sample new];
[self.sample  myMethod:^(NSInteger num) {
    NSLog(@“ing %ld”, num);
}];

- (IBAction)btnAction:(UIButton *)sender {
[self.sample playMethod:10];
}

//SampleController 메서드
- (void) myMethod:(ingBlock)myNum {
NSLog(@“start”);
self.playBlock = myNum;
NSLog(@“end”);
}

- (void)playMethod:(NSInteger)count {
 self.playBlock(count);
}

/*
1. myMethod가 불리면서 start, end 출력되고 self.playBlock = myNum이 됨
2. button을 클리하면 playMethod에 10이 들어가고 self.playBlock(count) 실행
3. self.playBlock은 myNum , myNum은 ^(NSInteger num) { NSLog(@“ing %ld”,num);} 가 실행됨.
*/
```


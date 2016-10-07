#### review
***

```objective-c
//string -> integer
NSInteger num = str.integerValue;
CGFloat fund = str.floatValue;

NSNumber *number  = [NSNumber numberWithInteger:num];

//integer >> string
NSString *str2  = [NSString stringWithFormat:@“%ld”,num];

//0부터 2개
NSRange range = NSMakeRange(0, 2);

//1부터 2개
NSRange range = NSMakeRange(1,2);

//오늘 현재 날짜
NSDate *date = [NSDate date];

NSDateFormatter * formatter = [ NSDateFormatter alloc] init];
formatter setDateFormat:@“mm:ss”];

[formatter dateFromString:@“13:20”]'

NSDate *date = [ formatter dateFromString :@“13:20”];

//date 타입을 String으로 출력할때
NSString *dateStr = [ formatter stringFormDate:date];
NSLog(@“%@“,dateStr);
```

#### Stack
***
- 스택은 한 쪽 끝에서만 자료를 넣거나 뺄 수 있는 선형수조 (LIFO - Last In First Out)으로 되어 있다. 자료를 넣는 것을 밀어넣는다.
- 자료를 넣는 것을 ‘밀어넣는다 ‘ 하여 푸시(push)라고 하고 반대로 넣어둔 자료를 꺼내는 것을 팝(pop)이라고 하는데, 이떄 꺼낸지는 자료는 가장 최근에 보관한 자료부터 나오게 한다.
- 이처럼 나중에 넣은 값이 먼저 나오는 것을 LIFO구조라고 한다.
- Navigation Controller 는 스택구조이다.

##### stack Method

- push : stack구조에 데이터를 계속 넣는 메서드
- pop : stack 구조에 데이터를 빼는 메서드
- isEmpty : stack 구조에 데이터를 전부 빼는 메서드



```objective-c

/** push 메서드 데이터 입력
* top, bottom을 이용해서 스텍을 찾아간다.
*  @param newValue 입력하려는 데이터
*  @version 0.1
*  @author jakouk
*/

-(void)push:(NSString *)newValue{

Node * newNode = [[Node alloc]init];
newNode.data = newValue;

if(self.bottom == nil){

  self.top = newNode;
  newNode.next = nil;
  self.bottom = newNode;
  
  }else{
  
  newNode.next = self.top;
  self.top = newNode;
  
  }
}

/** pop 메서드 데이터 입력
* top에 접근해서 top의 데이터를 가져오고 top을 앞쪽의 데이터가 되게 한다.
*
*  @version 0.1
*  @author jakouk
*/

-(NSString *)pop{

NSString *str = self.top.data;
self.top = self.top.next;

 if(self.top == nil){
  
  self.bottom = nil;
  
}
return str;
}

/** isEmpty
* 비어있는지 여부를 확인하는 메서드
* bottom 이 nil이면 비어있음
*/
-(BOOL)isEmpty{

BOOL empty = NO;

if(self.bottom == nil){
  empty = YES;
}

return empty;
}

/** clear 메서드
*
* 모든 데이터를 지우는 메서드
* top부터 접근하면서 top이 nil이 될때까지 반복한다.
*/
-(void)clear{

while(self.top != nil){
  self.top = self.top.next;
    if(self.top == nil){
      self.bottom = nil;
      }
   }
}

```

#### Queue
***
- 큐는 컴퓨터의 기본적인 자료 구조의 한가지로, 먼저 집어 넣은 데이터가 먼저 나오는 FIFO(First in First Out)구조로 저장하는 형식을 말한다.
- 영어단어 queue는 표를 사러 일렬로 늘어선 사람들로 이루어진 줄을 말하기도 하며, 먼저 줄을 선 사람이 먼저 나갈 수 있는 상황을 연상하면 된다.
- 나중에 집어 넣은 데이터가 먼저 나오는 스택과는 반대되는 개념이다.
- put는 큐에 자료를 넣는 것을, get은 큐에서 자료를 꺼내는 것을 의미한다.

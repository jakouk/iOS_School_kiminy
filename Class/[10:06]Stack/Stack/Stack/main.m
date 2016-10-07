//
//  main.m
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"
#import "Queue.h"
#import "BracketNew.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //stack  생성
        Stack *stack = [[Stack alloc]init];
        
        //비었는지 여부 판단
        NSLog(@"Empty : %hhd",[stack isEmpty]);
        
        
        //push 메서드를 이용해서 데이터 입력
        [stack push:@"name"];
        [stack push:@"hello"];
        [stack push:@"love"];
        [stack push:@"hope"];
        [stack push:@"like"];
        [stack push:@"iPhone"];
        [stack push:@"android"];
        [stack push:@"ms"];
        
        //비어있는지 여부 판단.
        NSLog(@"Empty : %hhd",[stack isEmpty]);
        
        //[stack isEmpty];
        
        //pop을 이용해서 스텍의 데이터 출력
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        NSLog(@"%@",[stack pop]);
        
        //비어있는지 여부 판단
        NSLog(@"Empty : %hhd",[stack isEmpty]);
        
        //입력하려는 데이터
        NSString *str = @"{A [ (i + 1 ) ] = 0}";
        
        //단어 하나하나 입력
        for(int i = 0; i<[str length]; i+=1){
            NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
            [stack push:ch];
        }
        
        // 괄호 찾기
        [stack bracketCheck];
        
        //괄호 찾기후 데이터가 다 있는지 여부 판단. 
        NSLog(@"%@",[stack pop]);
        
        BracketNew *bracket = [[BracketNew alloc]init];
        
        if([bracket checkBracketString:@"({ [(){ ]})"]){
            NSLog(@"성공");
        }else{
            NSLog(@"실패");
        }
        
        //큐 생성
        Queue *queue = [[Queue alloc]init];
        
        [queue isEmpty];
        
        //큐에 데이터 입력
        [queue put:@"1"];
        [queue put:@"2"];
        [queue put:@"3"];
        [queue put:@"4"];
        [queue put:@"5"];
        [queue put:@"6"];
        [queue put:@"7"];
        [queue put:@"8"];
        [queue put:@"9"];
        [queue put:@"10"];
        
        
        [queue isEmpty];
        
        //큐에 있는 데이터 출력
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
        NSLog(@"%@",[queue get]);
      
        [queue isEmpty];
        
    }
    return 0;
}

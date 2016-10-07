//
//  Queue.m
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Queue.h"

@implementation Queue

//큐 데이터 입력
-(void)put:(NSString *)newValue{
    
    Node *newNode = [[Node alloc]init];
    newNode.data = newValue;
    
    if(self.first == nil){
        
        self.first = newNode;
        self.last = newNode;
        newNode.next = nil;
        
    }else{
        self.last.next = newNode;
        self.last = newNode;
        newNode.next = nil;
    }
}

//큐 데이터 출력
-(NSString *)get{
    
    NSString *value = [[NSString alloc]init];
    
    value = self.first.data;
    self.first = self.first.next;
    
    if(self.first.next == nil){
        self.last = nil;
    }
    
    return value;
    
}

//큐가 비어있는지 여부 판단.
-(void)isEmpty{
    
    if(self.last == nil){
        NSLog(@"Empty");
    }else{
        NSLog(@"Exist");
    }
    
}
    
@end

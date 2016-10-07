//
//  Queue.m
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Queue.h"

@implementation Queue

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
    
-(NSString *)get{
    
    NSString *value = [[NSString alloc]init];
    
    
    
    return value;
    
}
    
-(void)isEmpty{
    
}
    
@end

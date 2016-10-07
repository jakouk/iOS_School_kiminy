//
//  Stack.m
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Stack.h"

@implementation Stack

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

// 강사님의 의도와는 다른 방법으로 한 것 .
-(void)bracketCheck{
    
    NSMutableArray *bracket = [[NSMutableArray alloc]init];
    
    while(self.top != nil){
        
       if( [self.top.data isEqualToString:@"{"] || [self.top.data isEqualToString:@"["] || [self.top.data isEqualToString:@"("] || [self.top.data isEqualToString:@")"] || [self.top.data isEqualToString:@"]"] || [self.top.data isEqualToString:@"}"] ){
           
           [bracket addObject:self.top.data];
        }
        
        self.top = self.top.next;
        
        if(self.top == nil){
            
            self.bottom = nil;
        }
    }
    
    BOOL success = [self differenceFind:bracket];
    
    if(success == YES){
        NSLog(@"성공");
    }else{
        NSLog(@"실패");
    }
}

//
-(BOOL)differenceFind:(NSArray *)array{
    
    BOOL success = NO;
        NSInteger count = [array count];
        NSString *str = @"0";
        NSInteger j = 0;
    
    if(count%2 == 0){
        
        for(NSInteger i = 0; i<count/2 ; i+= 1){
            str = array[i];
            if( [str isEqualToString:@")"] ){
                if([array[count - (i+1)] isEqualToString:@"("]){
                    j = j+1;
                }
            }else if( [str isEqualToString:@"]"] ){
                if([array[count - (i+1)] isEqualToString:@"["]){
                    j = j+1;
                }
            }else if( [str isEqualToString:@"}"] ){
                if([array[count - (i+1)] isEqualToString:@"{"]){
                    j = j+1;
                }
            }
            
        }
        if(j == count/2){
            success = YES;
        }
    }
    
    return success;
}

@end

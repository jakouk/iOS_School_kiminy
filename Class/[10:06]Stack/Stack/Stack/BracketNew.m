//
//  BracketNew.m
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "BracketNew.h"

@implementation BracketNew

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stack = [[Stack alloc]init];
    }
    return self;
}

-(BOOL)checkBracketString:(NSString *)str{
    
    BOOL success = NO;
    
    //스트링 분해 하기
    NSMutableArray *chList = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < str.length; i++) {
        NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
        [chList addObject:ch];
    }
    
    for(NSString *string in chList){
        
        if([string isEqualToString:@"("] || [string isEqualToString:@"{"] || [string isEqualToString:@"["] ){
            
            //( , {, [ 나오면 스택에 저장
            [self.stack push:string];
            
        }else if([string isEqualToString:@")"] || [string isEqualToString:@"}"] || [string isEqualToString:@"]"]){
            
            // ), }, ] 나오면 스택에 마지막에 저장된것과 짝이 맞는지 비교
            success = [self checkBracketFirstString:[self.stack pop] secondString:string];
            
            //한번이라도 실패가 나오면 바로 종료
            if(success == NO){
                return success;
            }
        }
    }
    
    return success;
}

-(BOOL)checkBracketFirstString:(NSString *)firstString secondString:(NSString *)secondString{
    
    BOOL success = NO;
    
    if([firstString isEqualToString: @"("] && [secondString isEqualToString: @")"]){
        
        //스택에 저장된게 ( 이고 들어온것이 ) 이면 YES
        success = YES;
    }else if([firstString isEqualToString: @"{"] && [secondString isEqualToString: @"}"]){
        
        //스택에 저장된게 < 이고 들어온것이 > 이면 YES
        success = YES;
    }else if([firstString isEqualToString: @"["] && [secondString isEqualToString: @"]"]){
        
        //스택에 저장된게 { 이고 들어온것이 } 이면 YES
        success = YES;
    }else{
        
        //그 이외의 경우는 전부 NO
        success = NO;
    }
    
    return success;
}



@end

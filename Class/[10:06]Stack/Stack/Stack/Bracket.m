//
//  Bracket.m
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Bracket.h"



@implementation Bracket


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.stack = [[Stack alloc] init];
    }
    return self;
}


- (BOOL)checkBracketString:(NSString *)str
{
    //스트링 분해 하기
    NSMutableArray *chList = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < str.length; i++) {
        NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
        [chList addObject:ch];
    }
    
    
    for (NSString *ch in chList) {
        //문자 타입 검사
        NSInteger checkBracketType = [self checkBracket:ch];
        
        switch (checkBracketType) {
            case 1:
            {//열리는 괄호 일때
                [self.stack push:ch];
                break;
            }
            case 2:
            {//닫히는 괄호 일때
                NSString *popStr =  [self.stack pop];
                //한쌍인지 검사
                if(![self checkPairOpenB:popStr closeB:ch])
                {
                    return NO;
                }
                break;
            }
            default:
                break;
        }
        
    }
    
    if ([self.stack isEmpty]) {
        return YES;
    }else
    {
        return NO;
    }
    
}

//1 == 여는괄호, 2== 닫는 괄호, 3 == 문자
- (NSInteger)checkBracket:(NSString *)bracket
{
    if ([bracket isEqualToString:@"{"] || [bracket isEqualToString:@"["] || [bracket isEqualToString:@"("]) {
        return 1;
    }else if ([bracket isEqualToString:@"}"] || [bracket isEqualToString:@"]"] || [bracket isEqualToString:@")"])
    {
        
        return 2;
    }else
        
    {
        return 3;
    }
}

- (BOOL)checkPairOpenB:(NSString *)openB closeB:(NSString *)closeB
{
    NSString *preCloseB;
    if ([openB isEqualToString:@"{"])
    {
        preCloseB = @"}";
    }else if ([openB isEqualToString:@"["])
    {
        preCloseB = @"]";
    }else if ([openB isEqualToString:@"("])
    {
        preCloseB = @")";
    }
    
    if ([preCloseB isEqualToString:closeB])
    {
        return YES;
    }else
    {
        return NO;
    }
    
}


@end

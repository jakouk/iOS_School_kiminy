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
    
    BOOL success;
    
    //스트링 분해 하기
    NSMutableArray *chList = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < str.length; i++) {
        NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
        [chList addObject:ch];
    }
    
    for(NSString *string in chList){
        
        if([string isEqualToString:@"("] || [string isEqualToString:@"{"] || [string isEqualToString:@"["] ){
            [self.stack push:string];
        }else if([string isEqualToString:@"("] || [string isEqualToString:@"{"] || [string isEqualToString:@"["]){
            
        }else{
            
        }
    }
    
    
    
    return success;
}



@end

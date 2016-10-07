//
//  BracketNew.h
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stack.h"

@interface BracketNew : NSObject

@property Stack *stack;

-(BOOL)checkBracketString:(NSString *)str;

@end

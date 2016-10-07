//
//  Stack.h
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Stack : NSObject

    @property Node *top;
    @property Node *bottom;
    
-(void)push:(NSString *)newValue;
-(NSString *)pop;
-(BOOL)isEmpty;
-(void)clear;
-(void)bracketCheck;
-(BOOL)differenceFind:(NSArray *)array;
    
@end

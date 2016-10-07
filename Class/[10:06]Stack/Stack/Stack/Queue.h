//
//  Queue.h
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Queue : NSObject

    @property Node * first;
    @property Node * last;
    
    -(void)put:(NSString *)newValue;
    -(NSString *)get;
    -(void)isEmpty;

@end

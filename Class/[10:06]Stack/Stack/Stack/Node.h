//
//  Node.h
//  Stack
//
//  Created by jakouk on 2016. 10. 6..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
    
    @property Node *next;
    @property NSString *data;
    @property Node *prev;

@end

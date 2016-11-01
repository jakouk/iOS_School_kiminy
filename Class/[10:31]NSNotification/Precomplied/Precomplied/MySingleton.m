//
//  MySingleton.m
//  Precomplied
//
//  Created by jakouk on 2016. 10. 31..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

+ (instancetype)sharedInstance {
    static MySingleton * instance = nil;
    static dispatch_once_t token = NULL;
    
    dispatch_once(&token, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (void)justMethod {
    NSLog(@"method called");
}




@end

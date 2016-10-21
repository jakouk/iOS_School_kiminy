//
//  Myclass.m
//  ObjectiveLifeCycle
//
//  Created by jakouk on 2016. 10. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Myclass.h"

@implementation Myclass

+ (instancetype)alloc {
    NSLog(@"My class instance alloc");
    return [super alloc];
}

- (instancetype)init {
    NSLog(@"My class instance init");
    return [super init];
}

- (void)dealloc {
    NSLog(@"My class instance dealloc");
}

@end

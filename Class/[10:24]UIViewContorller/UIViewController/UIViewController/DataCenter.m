//
//  DataCenter.m
//  UIViewController
//
//  Created by jakouk on 2016. 11. 2..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedDate {
    
    static DataCenter *dataCenter = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc] init];
    });
    
    return dataCenter;
}

@end

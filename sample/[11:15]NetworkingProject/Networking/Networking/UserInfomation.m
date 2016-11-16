//
//  UserInfomation.m
//  Networking
//
//  Created by jakouk on 2016. 11. 15..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "UserInfomation.h"

@implementation UserInfomation

+ (instancetype)sharedUserInformation {
    static UserInfomation * instance = nil;
    static dispatch_once_t token;
    
    dispatch_once(&token, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

@end

//
//  UserInformation.m
//  NetworkingMiniProject
//
//  Created by jakouk on 2016. 11. 16..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "UserInformation.h"

@implementation UserInformation

+ (instancetype)sharedUserInformation {
    static UserInformation * instance = nil;
    static dispatch_once_t token;
    
    dispatch_once(&token, ^{
        instance = [[UserInformation alloc] init];
    });
    
    return instance;
}

@end

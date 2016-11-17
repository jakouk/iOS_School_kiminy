//
//  UserInformation.h
//  NetworkingMiniProject
//
//  Created by jakouk on 2016. 11. 16..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInformation : NSObject

@property NSString *userId;
@property NSArray *imageInfoList;

+ (instancetype)sharedUserInformation;


@end

//
//  DataCenter.h
//  LoginPage
//
//  Created by jakouk on 2016. 11. 2..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedData;

- (BOOL)joinUserID:(NSString *)userID userPW:(NSString *)userPW;
- (BOOL)haveUserID:(NSString *)userID userPW:(NSString *)userPW;

- (void)setAutoLogin:(BOOL)flag;
- (BOOL)isAutoLogin;

- (void)setUserID:(NSString *)userID;
- (NSString *)userID;

@end

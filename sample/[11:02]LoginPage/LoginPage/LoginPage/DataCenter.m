//
//  DataCenter.m
//  LoginPage
//
//  Created by jakouk on 2016. 11. 2..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()

@property NSUserDefaults  *userDefault;

@end

@implementation DataCenter

+ (instancetype)sharedData {
    
    static DataCenter *dataCenter = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        dataCenter = [[self alloc] init];
    });
    
    return dataCenter;
}

//가입할때 사용할 ID와 PW를 받아와서 동일한ID 존재 여부 확인
- (BOOL)joinUserID:(NSString *)userID userPW:(NSString *)userPW {
    
    BOOL isJoinAble = NO;
    self.userDefault = [NSUserDefaults standardUserDefaults];
    
    if (![userID isEqualToString:[self.userDefault objectForKey:@"ID"]]) {
        [self.userDefault setObject:userID forKey:@"ID"];
        [self.userDefault setObject:userPW forKey:@"PW"];
        isJoinAble = YES;
    } 
    return isJoinAble;
}

//로그인하여 ID와 PW확인
- (BOOL)haveUserID:(NSString *)userID userPW:(NSString *)userPW {
    
    BOOL isLoinPossible = NO;
    self.userDefault = [NSUserDefaults standardUserDefaults];
    
    if ([userID isEqualToString:[self.userDefault objectForKey:@"ID"]] && [userPW isEqualToString:[self.userDefault objectForKey:@"PW"]]) {
        isLoinPossible = YES;
    }
    
    return isLoinPossible;
}

//로그인하면 AutoLogin을 세팅함
- (void)setAutoLogin:(BOOL)flag {
    self.userDefault = [NSUserDefaults standardUserDefaults];
    NSNumber *setAutoLogin = [NSNumber numberWithBool:flag];
    [self.userDefault setObject:setAutoLogin forKey:@"autoLogin"];
}

//AutoLogin 확인함.
- (BOOL)isAutoLogin {
    self.userDefault = [NSUserDefaults standardUserDefaults];
    NSNumber *flag = [self.userDefault objectForKey:@"autoLogin"];
    BOOL isAutoLoign = flag.boolValue;
    return isAutoLoign;
}

//UserDefault 에서 ID 세팅
- (void)setUserID:(NSString *)userID {
    self.userDefault = [NSUserDefaults standardUserDefaults];
    [self.userDefault setObject:userID forKey:@"ID"];
}

//UserDefualt 에서 ID 가져옴
- (NSString *)userID {
    self.userDefault = [NSUserDefaults standardUserDefaults];
    NSString *id = [self.userDefault objectForKey:@"ID"];
    return id;
}

- (void)saveUserData:(NSDictionary *)data {
    
}

//- (NSArray *)loadUserData {
//    
//}

@end

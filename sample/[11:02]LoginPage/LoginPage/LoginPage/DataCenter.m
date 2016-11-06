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
        
        NSMutableDictionary *userData = [[NSMutableDictionary alloc] init];
        [userData setValue:userID forKey:@"ID"];
        [userData setValue:userPW forKey:@"PW"];
        
        [self saveUserData:userData];
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
    
    NSArray *userDatas = [self loadUserData];
    NSLog(@"userDatas %ld", userDatas.count);
    
    for (NSDictionary *userData in userDatas) {
        //이 부분에서 오류
        NSString *savedUserID = [userData objectForKey:@"ID"];
        NSString *savedUserPW = [userData objectForKey:@"PW"];
        NSLog(@"savedUserID %@ , savedUserPW %@", savedUserID, savedUserPW);
        
        if ( [userID isEqualToString:savedUserID] && [userPW isEqualToString:savedUserPW] ) {
            isLoinPossible = YES;
        }
        
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

//가입하면서 plist에 저장함
- (void)saveUserData:(NSDictionary *)data {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingString:@"FriendList.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"FriendList" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    //데이터를 저장하는 부분에서 문제가 있는것 같음.
    NSMutableDictionary *dic= [NSMutableDictionary dictionaryWithContentsOfFile:docuPath];
    NSMutableArray *userDatas = [[NSMutableArray alloc] init];
    
    if ( [dic objectForKey:@"userData"] != nil) {
        [userDatas addObject:[dic objectForKey:@"userData"]];
    }
    
    [userDatas addObject:data];
    
    NSLog(@"saveUserData of userDatas %ld",userDatas.count);
    
    [dic setObject:userDatas forKey:@"userData"];
    [dic writeToFile:docuPath atomically:NO];
}

//로그인할때 plist의 정보 search
- (NSArray *)loadUserData {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingString:@"FriendList.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"FriendList" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
    }
    
    NSMutableDictionary *dic= [NSMutableDictionary dictionaryWithContentsOfFile:docuPath];
    NSMutableArray *userData = [dic objectForKey:@"userData"];
    
    NSLog(@"loadUserData userData %ld",userData.count);
    
    return userData;
}

@end

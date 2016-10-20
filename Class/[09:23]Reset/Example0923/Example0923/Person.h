//
//  Person.h
//  Example0923
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property NSString *mobileNumber;
@property NSString *city;
@property BOOL isHandsome;
@property BOOL isMan;

//이름, 잘생겼는지
- (instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHandsome;

//모바일번호 , 나이
-(instancetype)initWithmobileNumber:(NSString *)mobileNumber age:(NSInteger)age;

//이름, 도시
-(instancetype)initWithName:(NSString *)name location:(NSString *)city;

//나이, 도시, 성별
-(instancetype)initWithAge:(NSInteger)age location:(NSString *)city isMan:(BOOL)isMan;

@end

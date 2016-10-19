//
//  Person.m
//  Example0923
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHandsome{
    
    self = [super init];
    self.name = name;
    self.isHandsome = isHandsome;
    
    return self;
}

-(instancetype)initWithmobileNumber:(NSString *)mobileNumber age:(NSInteger)age{

    self = [self init];
    
    self.mobileNumber = mobileNumber;
    self.age = age;
    
    return self;
}

-(instancetype)initWithName:(NSString *)name location:(NSString *)city{
    
    self = [super init];
    self.name = name;
    self.city = city;
    
    return self;
}

-(instancetype)initWithAge:(NSInteger)age location:(NSString *)city isMan:(BOOL)isMan{
    
    self = [super init];
    self.age = age;
    self.city = city;
    self.isMan = YES;
    
    return self;
}

@end

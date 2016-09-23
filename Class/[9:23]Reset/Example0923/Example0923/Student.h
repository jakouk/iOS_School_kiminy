//
//  Student.h
//  Example0923
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property NSString *school;
@property NSInteger grade;
@property NSString *credit;

//이름, 도시, 학교, 학년
-(instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade :(NSInteger)grade;

-(instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade :(NSInteger)grade credit:(NSString *)credit;

//이름, 도시, 번호, 나이 , 학교
-(instancetype)initWithName:(NSString *)name city:(NSString *)city mobileNumber:(NSString *)mobileNumber age:(NSInteger)age schoolName:(NSString *)school;

@end

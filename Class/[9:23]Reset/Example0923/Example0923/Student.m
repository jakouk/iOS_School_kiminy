//
//  Student.m
//  Example0923
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Student.h"

@implementation Student

//init을 재정의한것 이다. ( NSObject의 init을 재정의한 것이다 )
- (instancetype)init {
    self = [super init];
    self.name = @"Unknwon";
    self.isHandsome = NO;
    return self;
}

// 이름 도시, 학교, 학년
-(instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade :(NSInteger)grade{
    
    self = [super initWithName:name location:city];
    
    self.school = school;
    self.grade = grade;
    
    return self;
}

//이름, 도시, 학교, 학년, 성적
-(instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade :(NSInteger)grade credit:(NSString *)credit{
    
    self = [self initWithName:name
                         city:city
                   schoolName:school
                        grade:grade];
    
    self.credit = credit;
    
    
    return self;
}

//이름, 지역, 모바일번호, 나이 ,학년
-(instancetype)initWithName:(NSString *)name city:(NSString *)city mobileNumber:(NSString *)mobileNumber age:(NSInteger)age schoolName:(NSString *)school{
    
    self = [self initWithmobileNumber:mobileNumber age:age];
    self = [self initWithName:name location:city];
    
    // 쓰레기 값을 치워준다는 것이다.
    self = [self init];
    self.school = school;
    
    
    return self;
}


@end

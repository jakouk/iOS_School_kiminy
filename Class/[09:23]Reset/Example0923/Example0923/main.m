//
//  main.m
//  Example0923
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    Person *jack = [[Person alloc]init];
    jack.name = @"잭키챤";
    jack.age = 50;
    jack.mobileNumber = @"000-0000-0234";
    jack.city = @"홍콩";
    jack.isHandsome = YES;
    
    Person *rose = [[Person alloc]initWithName:@"로즈" isHandsome:YES];
    NSLog(@"rose's name : %@, 잘생님 ? : %d" ,rose.name,rose.isHandsome);
    
    Person *micky = [[Person alloc]initWithName:@"미키" location:@"인천"];
    NSLog(@"micky's name : %@, city : %@",micky.name,micky.city);
    
    //  Person *ryan = [[Person alloc]initWithName:@"라이언" age:2];
   // NSLog(@"ryan's name : %@, age : %ld",ryan.name,ryan.age);
    
    Person *kakao = [[Person alloc]initWithAge:5 location:@"제주" isMan:YES];
    NSLog(@"kakao's age : %ld, city : %@, isMan : %d",kakao.age,kakao.city,kakao.isMan);
    
    Student *student1 = [[Student alloc]initWithName:@"학생1" city:@"인천" mobileNumber:@"010-3243-3243" age:16 schoolName:@"인천중"];
    
    NSLog(@"name : %@, city :%@, mobileNumber :%@, age :%ld, schoolName : %@",student1.name,student1.city,student1.mobileNumber,student1.age,student1.school);
    
    
    //
    Student * mini = [[Student alloc]initWithName:@"미니" isHandsome:NO];
    
    //
    //NSString *miniIntroduction = [[NSString alloc]initWithFormat:<#(nonnull NSString *), ...#>];
    
    
        
    return 0;
}

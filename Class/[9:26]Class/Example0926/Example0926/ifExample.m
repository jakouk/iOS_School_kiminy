//
//  ifExample.m
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ifExample.h"

@implementation ifExample

+ (BOOL)isEvenNumber:(NSInteger)number
{
    
    BOOL isEven = NO;
    if(number % 2 == 0){
        //짝수
        isEven = YES;
    }else{
        //홀수
        isEven = YES;
    }
    return isEven;
}

//+ (BOOL)isEvenNumber:(NSInteger)number
//{
//    if(number % 2 == 0){
//        //짝수
//        return YES;
//    }else{
//        //홀수
//        return NO;
//    }
//}

+(NSString *)gradeAlloc:(NSInteger)number
{
    NSString *grade = @"";
    
    if(number <=100 && number >= 95){
        grade = @"A+";
    }else if(number >= 90 && number < 95){
        grade = @"A";
    }else if(number >= 85 && number < 90){
        grade = @"B+";
    }else if(number >= 80 && number < 85){
        grade = @"B";
    }else if(number >= 75 && number < 80){
        grade = @"C+";
    }else if(number >= 70 && number < 75){
        grade = @"C";
    }else if(number >= 0 && number <70){
        grade = @"F";
    }else{
        grade =@"점수 범위를 초과 하였습니다. 다시 입력하세요";
    }
    
    return grade;
}

+(CGFloat)gardeToPoint:(NSString *)grade{
    
    CGFloat point = 0;
    
    if([grade isEqualToString:@"A+"]){
        point = 4.5;
    }else if([grade isEqualToString:@"A"]){
        point = 4.0;
    }else if([grade isEqualToString:@"B+"]){
        point = 3.5;
    }else if([grade isEqualToString:@"B"]){
        point = 3.0;
    }else if([grade isEqualToString:@"C+"]){
        point = 2.5;
    }else if([grade isEqualToString:@"C"]){
        point = 2.0;
    }else if([grade isEqualToString:@"D"]){
        point = 1.5;
    }

    return point;
}

+(void)scholarshopWithGrade:(NSInteger)grade
{
    switch (grade){
        case 1:
            NSLog(@"전액 장학금");
            break;
        case 2:
            NSLog(@"50%% 장학금");
            break;
        case 3:
            NSLog(@"30%% 장학금");
            break;
        default:
            NSLog(@"장학금 없음");
            break;
    }
}

+ (NSInteger)monthLastDay:(NSInteger)month{
    
    NSInteger lastDay = 0;
    
    switch (month) {
        case 2:
            lastDay = 28;
            break;
        case 4 :
            lastDay = 30;
            break;
        case 6:
            lastDay = 30;
            break;
        case 9:
            lastDay = 30;
            break;
        case 11:
            lastDay = 30;
            break;
        default:
            lastDay = 31;
            break;
    }
    return lastDay;
}

+ (NSInteger)absoluteNum:(NSInteger)number{
    
    NSInteger absoluteNumber = 0;
    
    if(number<0){
        absoluteNumber = absoluteNumber * (-1);
    }
    
    return absoluteNumber;
}

+ (CGFloat)roundNum:(CGFloat)number{
    
    CGFloat roundNumber = number * 100;
    NSInteger integer = (NSInteger)roundNumber;
    
    if(roundNumber-integer >= 0.5){
        roundNumber = roundNumber +1;
    }
    integer = (NSInteger)roundNumber;
    roundNumber = integer*0.01;
    
    return roundNumber;
}

+ (void)checkLeapYear:(NSInteger)year{
    
    if((!(year % 100==0) && year %4 == 0 ) || year %400 == 0){
        NSLog(@"%ld년은 윤년 입니다. ",year);
    }else{
        NSLog(@"%ld년은 윤년이 아닙니다.",year);
    }
}







@end

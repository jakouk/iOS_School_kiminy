//
//  main.m
//  PolymorphismSample
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
#import "Cat.h"
#import "Dog.h"
#import "Horse.h"
#import "Mouse.h"

int main(int argc, const char * argv[]) {

    Bird *bird = [[Bird alloc]init];
    [bird cry:@"참새" birdSound:@"짹짹"];
    
    Cat *cat = [[Cat alloc]init];
    [cat cry];
    
    Dog *dog = [[Dog alloc]init];
    [dog cry];
    
    Horse *horse = [[Horse alloc]init];
    [horse cry];
    
    Mouse *mouse = [[Mouse alloc]init];
    [mouse cry];
    
    NSInteger amount = 5;
    CGFloat many = 20.4;
    
    NSLog(@"amount : %-5ld",amount);
    NSLog(@"amount : %+04ld",amount);
    NSLog(@"amount : %3ld",amount);
    
    NSLog(@"many : %5.2f",many);
    NSLog(@"many : %-10.3f",many);
    NSLog(@"many : %10.0f",many);
    NSLog(@"many : %.3f",many);
    
    // %-5ld 오른쪽 정렬하고 5칸 사용함.
    // %-04ld 오류 ( 04ld 4칸중에 2칸은 0으로 채움 )
    // %+3ld 3칸 비워두고 출력
    // %5.2f 전체숫자 5칸중 소수점 2자리
    // %-10.3f 오른쪽 정렬 전체숫자 10자리 정수는 6자리 점 하나 소수점 3자리
    // %10.0f 정수 10자리
    // %.3f 소수점 3자리
    
    
    return 0;
}

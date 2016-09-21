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
    
    return 0;
}

//
//  main.m
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beginner.h"
#import "Weapon.h"

int main(int argc, const char * argv[]) {

    Weapon *sword = [[Weapon alloc]initWithName:@"칼" strWeapon:5 weaponPhysicalPower:20];
    Beginner *mike = [[Beginner alloc]initWithName:@"마이크"];
    
    [mike takeWeapon:sword];
    [mike removeWeapon];
    
    
    
    return 0;
}

//
//  Weapon.m
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Weapon.h"

@implementation Weapon

-(instancetype)initWithName:(NSString *)weaponName strWeapon:(NSInteger)str weaponPhysicalPower:(NSInteger)physicalPower{
    self = [super init];
    self.str = str;
    self.physicalPower = physicalPower;
    return self;
}

@end

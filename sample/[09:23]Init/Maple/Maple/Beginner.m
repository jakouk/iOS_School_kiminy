//
//  Beginner.m
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Beginner.h"

@implementation Beginner

-(instancetype)initWithName:(NSString *)characterName{
    
    self = [super init];
    self.name = characterName;
    self.health = 50;
    self.mana = 10;
    self.str = 10;
    self.intelligent = 10;
    self.luck = 10;
    self.level = 1;
    self.dex = 10;
    self.physicalPower = self.str * 2;
    self.magicalPower = self.intelligent * 3;
    self.criticalPercent = self.luck * 0.1;
    self.attackSpeed = self.dex *0.2;
    return self;
}


@end

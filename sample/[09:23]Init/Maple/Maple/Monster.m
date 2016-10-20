//
//  Monster.m
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Monster.h"
#import "GameClass.h"

@implementation Monster

-(id)initWithName:(NSString *)monsterName{
    
    self.name = monsterName;
    self.health = 100;
    self.str = 15;
    self.physicalPower = 30;
    
    return nil;
}

-(id)physicalAttack:(GameClass *)gameClass{
    
    NSInteger originHealth = gameClass.health;
    gameClass.health = gameClass.health - self.physicalPower;
    
    NSLog(@"%@ 의 공격으로 캐릭터 %@의 체력이 %ld에서 %ld로 감소하였습니다.",self.name,gameClass.name,originHealth,gameClass.health);
    
    
    return nil;
}


@end

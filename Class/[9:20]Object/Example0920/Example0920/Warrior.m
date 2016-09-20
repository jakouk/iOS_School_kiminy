//
//  Warrior.m
//  Example0920
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (id)weaponPowerUp:(id)skillLevel time:(id)level timeDamage:(id)physicalPower{
    NSLog(@"무기의 공격력이 %@배 만큼 강해지고 지속시간이 %@초 만큼 늘어나고 지속 데미지가 %@만큼 늘어납니다.",skillLevel,level,physicalPower);
    return nil;
}
- (id)dragonAnger:(id)skillLevel time:(id)level timeDamage:(id)physicalPower{
    NSLog(@"데미지가 %@ x 0.5배 만큼 강해지고 지속시간이 %@초 만큼 늘어나고 지속 데이미가 %@만큼 늘어납니다.",skillLevel,level,physicalPower);
    return nil;
}

- (id)dragonBless:(id)skillLevel time:(id)level{
    NSLog(@"체력이 %@ X 50 만큼 늘어나고 지속시간이 %@초 만큼 늘어납니다.",skillLevel,level);
    return nil;
}

- (id)physicalAttack:(id)to holdDamage:physicalPower Damage:health{
    NSLog(@"%@을(를) %@고정데미지와(과) %@의 추가데미지로 공격",to,physicalPower,health);
    return nil;
}

- (id)jump:(id)to long:(id)physicalPower{
    NSLog(@"현재위지 %@에서 %@만큼 이동",to,physicalPower);
    return nil;
}

@end

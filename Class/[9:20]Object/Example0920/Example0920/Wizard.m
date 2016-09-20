//
//  Wizard.m
//  Example0920
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard
-(id)blizard:(id)skillLevel time:(id)level timeDamage:(id)magicalPower slowTime:(id)mana{
    
    NSLog(@"블리자드의 데미지가 50 X %@ 만큼 늘어나고 지속시간이 %@초 만큼늘어나고 지속 데미지가 %@만큼늘어나고 스로우가 %@만큼 걸립니다.",skillLevel,level,magicalPower,mana);
    return nil;
}

-(id)flame:(id)skillLevel time:(id)level timeDamage:(id)magicalPower{
    NSLog(@"플레임의 데이미가 60 x %@만큼 늘어나고 지속시간이 %@초 만큼 늘어나고 지속 데미지가 %@만큼 늘어납니다.",skillLevel,level,magicalPower);
    return nil;
}

-(id)thunderVolt:(id)skillLevel time:(id)level timeDamage:(id)magicalPower{
    NSLog(@"썬더볼트의 데미지가 70 X %@만큼 늘어나고 지속시간이 %@초 만큼 늘어나고 지속 데미지가 %@만큼 늘어납니다. ",skillLevel,level,magicalPower);
    return nil;
}

-(id)windstorm:(id)to damage:(id)magicalPower holdDamage:(id)mana{
    NSLog(@"%@에게 고정데미지 %@와(과) 추가데미지 %@를(을) 주어라",to,mana,magicalPower);
    return nil;
}

-(id)magicalAttack:(id)to damage:(id)magicalPower holdDamage:(id)mana{
    NSLog(@"%@에게 고정데미지 %@와(과) 추가데미지 %@를(을) 주어라",to,mana,magicalPower);
    return nil;
}

-(id)heal:(id)to amount:(id)magicalPower holdAmount:(id)mana{
    NSLog(@"%@에게 고정힐 %@와(과) 추가힐 %@를(을) 주어라 ",to,mana,magicalPower);
    return nil;
}



@end

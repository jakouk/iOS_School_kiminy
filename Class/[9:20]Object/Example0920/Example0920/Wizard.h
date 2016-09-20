//
//  Wizard.h
//  Example0920
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

/**
 * 마법을 위해 탄생한 마법사
 * 힘이 약하고 마법력이 강합니다.
 * 체력이 낮고 마력이 높습니다.
 * @discussion 마법사가 갖출 능력에는 또 뭐가 있을까
 * @author jakouk
 * @version 0.1
 */

#import <Foundation/Foundation.h>

/*
    마법사 클래스
 */

@interface Wizard : NSObject

///생명력
@property id health;

///마나
@property id mana;

///일반 데미지
@property id physicalPower;

///마법 데미지
@property id magicalPower;

///무기
@property id weapon;

//블리자드
-(id)blizard:(id)skillLevel time:(id)level timeDamage:(id)magicalPower slowTime:(id)mana;

//플레임
-(id)flame:(id)skillLevel time:(id)level timeDamage:(id)magicalPower;

//번개
-(id)thunderVolt:(id)skillLevel time:(id)level timeDamage:(id)magicalPower;

//윈드스톰
-(id)windstorm:(id)to damage:(id)magicalPower holdDamage:(id)mana;

//마법공격
-(id)magicalAttack:(id)to damage:(id)magicalPower holdDamage:(id)mana;

//힐
-(id)heal:(id)to amount:(id)magicalPower holdAmount:(id)mana;


@end

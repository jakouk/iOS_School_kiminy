//
//  Warrior.h
//  Example0920
//
//  Created by jakouk on 2016. 9. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

/**
 * 싸움을 위해 탄생한 전사
 * 힘이 세고 마법력이 약합니다.
 * 체력이 높고 마력이 낮습니다.
 * @discussion 전사가 갖출 능력에는 또 뭐가 있을까
 * @author jakouk
 * @version 0.1
 */

#import <Foundation/Foundation.h>

/*
    전사 클래스
 */

@interface Warrior : NSObject


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

/**
 * 무기공격력을 강화합니다.
 * @param skillLevel 스킬 포인트로 무기 데미지 증가
 * @param level 실제레벨로 지속시간 증가
 * @param physicalPower 물리 공격력으로 지속 데미지 증가
 * @return 반환은 나중에 배웁니다.
 * @author jakouk
 * @version 0.1
 */
- (id)weaponPowerUp:(id)skillLevel time:(id)level timeDamage:(id)physicalPower ;

/**
 * 물리 공격력이 일시적으로 오릅니다.
 * @param skillLevel 스킬 포인트로 물리 데미지 증가
 * @param level 실제레벨로 지속시간 증가
 * @param physicalPower 물리 공격력으로 지속 데이지 즈가
 * @return 반환은 나중에 배웁니다.
 * @version 0.1
 */
- (id)dragonAnger:(id)skillLevel time:(id)level timeDamage:(id)physicalPower;

/**
 * 생명력이 일시적으로 상승합니다.
 * @param skillLevel 스킬포인트로 생명력이 증가
 * @param level 실제레벨로 지속시간 증가
 * @return 반환은 나중에 배웁니다.
 * @version 0.1
 */
- (id)dragonBless:(id)skillLevel time:(id)level;

/**
 * to에게
 *
 *
 *
 *
 */
- (id)physicalAttack:(id)to holdDamage:physicalPower Damage:health;

//점프

-(id)jump:(id)to long:(id)physicalPower;

@end

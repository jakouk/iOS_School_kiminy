//
//  Weapon.h
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Maple.h"

/**
 * 무기 클래스
 * @discussion 무기에 추가될 메서드에로 무기전용 스킬도 생각해 봐야겠다.
 * @author jakouk
 * @version 0.1
 */
@interface Weapon : Maple

///무기 이름
@property NSString *gameClassdelicate;

/**
 * 무기를 생성하는 메서드
 * @discussion 원래는 체력, 마나, 지능등 여러 요소를 넣을수 있지만 일단은 힘만 넣음
 * @param weaponName 무기이름
 * @param str 캐릭터의 힘을 올려줄 힘수치
 * @param physicalPower 무기의 기본 공격력 
 * @author jakouk
 * @version 0.1s
 */
-(instancetype)initWithName:(NSString *)weaponName strWeapon:(NSInteger)str weaponPhysicalPower:(NSInteger)physicalPower;

@end

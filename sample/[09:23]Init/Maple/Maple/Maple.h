//
//  Maple.h
//  Maple
//
//  Created by jakouk on 2016. 9. 23..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 전체 메이플을 구성하는 최상위 클래스 원래 캐릭터 클래스에 힘등을 나누어야 하지만 실수해서 그냥 메이플에 만듬
 * @discussion 최상위 메이플 클래스로 관리하는 것이 좋은 방법일까?
 * @author jakouk
 
 */
@interface Maple : NSObject

///이름
@property NSString *name;

///체력
@property NSInteger health;

///마나
@property NSInteger mana;

///힘
@property NSInteger str;

///지능
@property NSInteger intelligent;

///헹운
@property NSInteger luck;

///민첩
@property NSInteger dex;

///마법공격력
@property NSInteger magicalPower;

///물리공격력
@property NSInteger physicalPower;

///크리티컬 확률
@property CGFloat criticalPercent;

///공격스피드
@property CGFloat attackSpeed;


@end

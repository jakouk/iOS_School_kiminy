//
//  Warrior.h
//  Example0921
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;

@interface Warrior : NSObject

///힘
@property NSInteger force;

///체력
@property NSUInteger health;

///마나
@property NSUInteger mana;

///지능
@property NSInteger intellgent;

///물리데미지
@property NSInteger physicalPower;

///마법데미지
@property NSInteger magicalPower;

///이름
@property NSString *name;

///스피드
@property NSInteger speed;

///생존여부
@property BOOL isDead;

- (id)physicalAttackTo:(Wizard *)someCharacter;
- (id)magicalAttackTo:(Wizard *)someCharacter;
- (id)jumpTo:(NSString *)someWhere;


@end

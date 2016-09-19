//
//  Macbook.h
//  StructureSample
//
//  Created by jakouk on 2016. 9. 19..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

//맥북 클래스
@interface Macbook : NSObject

//디스플레이사이즈
@property id displaySize;

//제품타입 ( 맥북, 맥북프로, 맥북에어 )
@property id productType;

//맥북색깔( 로즈골드, 실버 )
@property id macBookColor;

//맥북제조년도
@property id productMadeYear;

//디스플레이 타입 ( 레티나 디스플레이등 )
@property id displayType;



@end

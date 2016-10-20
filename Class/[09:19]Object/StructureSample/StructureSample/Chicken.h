//
//  Chicken.h
//  StructureSample
//
//  Created by jakouk on 2016. 9. 19..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

//치킨 클래스
@interface Chicken : NSObject

//치킨 브랜드
@property id brand;

//치킨 종류( 순살 인지 아닌지 )
@property id boneType;

//치킨조리방법 ( 구이, 튀김등 )
@property id burnWay;

//치킨 소스( 간장, 후라이드, 양념등 )
@property id sauce;

//사이드 디쉬( 감자, 떡등 )
@property id sideDishs;



@end

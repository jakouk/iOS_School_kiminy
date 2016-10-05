//
//  Test.h
//  Test
//
//  Created by jakouk on 2016. 10. 3..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test : NSObject

@property (readonly)NSString *hello;
@property (readonly)NSString *love;

-(void)changeHello:(NSString *)hallo;
+(CGFloat)changeLove:(NSString *)love;
+(void)getMultiplicationTable:(NSInteger)number;
+(void)factorial:(NSInteger)number;
+(void)triangularNum:(NSInteger)number;
+(void)addAllNum:(NSInteger)number;
+(void)game369:(NSInteger)nubmer;

+(NSString *)songTitle:(NSDictionary *)data;
+(NSArray *)songTileList:(NSDictionary *)data;
+(NSArray *)songDataList:(NSDictionary *)data;
+(NSString *)lyricsSongTitleInput:(NSString *)title data:(NSDictionary *)data;
+(NSDate *)songTime:(NSString *)title data:(NSDictionary *)data;
+(void)limitedGame369:(NSInteger)number;

+(void)game369limited:(NSInteger)number;
+(void)addAllNumNew:(NSInteger)number;

+(void)changeString:(NSInteger)number;

@end

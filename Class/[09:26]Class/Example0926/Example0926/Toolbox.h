//
//  Toolbox.h
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Toolbox : NSObject

+(CGFloat)inchToCm:(NSInteger)inch;
+(CGFloat)cmToInch:(NSInteger)cm;

+(CGFloat)m2ToPyeng:(NSInteger)pyeng;
+(CGFloat)pyengToM2:(NSInteger)m2;

+(CGFloat)fToC:(NSInteger)f;
+(CGFloat)cToF:(NSInteger)c;

+(CGFloat)kbToMb:(NSInteger)mb;
+(CGFloat)mbToGb:(NSInteger)gb;

+(NSInteger)hourToSecond:(NSInteger)hour;
+(NSInteger)secondToHour:(NSInteger)second;

@end

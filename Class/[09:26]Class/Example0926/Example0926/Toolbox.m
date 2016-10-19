//
//  Toolbox.m
//  Example0926
//
//  Created by jakouk on 2016. 9. 26..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Toolbox.h"

@implementation Toolbox

+(CGFloat)inchToCm:(NSInteger)inch
{
    return inch * 2.54;
}

+(CGFloat)cmToInch:(NSInteger)cm
{
    return cm*0.393701;
}

+(CGFloat)m2ToPyeng:(NSInteger)pyeng
{
    return pyeng * 3.305785;
}

+(CGFloat)pyengToM2:(NSInteger)m2
{
    return m2 * 0.3025;
}

+(CGFloat)fToC:(NSInteger)f
{
    return 5.0 / 9.0 * (f -32) ;
}

+(CGFloat)cToF:(NSInteger)c
{
    return c * 9.0 / 5.0 +32;
}

+(CGFloat)kbToMb:(NSInteger)kb
{
    return kb * 0.000977;
}

+(CGFloat)mbToGb:(NSInteger)mb
{
    return mb * 0.000977;
}


+(NSInteger)hourToSecond:(NSInteger)hour
{
    NSInteger h = 0;
    NSInteger m = 0;
    NSInteger modifyHour = hour;
    
    h = modifyHour /10000;
    modifyHour = modifyHour - (h*10000);
    
    m = modifyHour/100;
    modifyHour = modifyHour - (m*100);
    
    h = h*60*60;
    m = m*60;

    return h+m+modifyHour;
}

+(NSInteger)secondToHour:(NSInteger)second
{
    NSInteger h = 0;
    NSInteger m = 0;
    NSInteger modifyHour = second;
    
    h = modifyHour /3600;
    modifyHour = second - (h*3600);
    
    m = modifyHour / 60;
    modifyHour = modifyHour - (m * 60);
    
    return h*10000 + m * 100 + modifyHour;
}

    
@end

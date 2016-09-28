//
//  Person.m
//  Example0927
//
//  Created by jakouk on 2016. 9. 27..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Person.h"

@implementation Person

-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if(self){
        self.name = name;
    }
    return self;
}
    
    -(void)setHeight:(CGFloat)height weight:(CGFloat)wegiht
    {
       // _info.height = height;
       // _info.weight = weight;
        
        //다른 버전
        character tempInfo = {height,wegiht};
        self.info = tempInfo;
    }
    
    - (character)personInfo
    {
        return self.info;
    }
    
    
@end

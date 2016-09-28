//
//  Person.h
//  Example0927
//
//  Created by jakouk on 2016. 9. 27..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct character
{
    CGFloat hieght;
    CGFloat weight;
}character;

@interface Person : NSObject
    
    @property NSString *name;
    @property NSInteger age;
    @property character info;

@end

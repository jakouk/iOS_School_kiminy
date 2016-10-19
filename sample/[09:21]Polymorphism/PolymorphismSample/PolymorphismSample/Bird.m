//
//  Bird.m
//  PolymorphismSample
//
//  Created by jakouk on 2016. 9. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Bird.h"

@implementation Bird
- (id)cry:(NSString *)birdName birdSound:(NSString *)sound{
    NSLog(@"%@은(는) %@",birdName,sound);
    return nil;
}
@end

//
//  main.m
//  Example0927
//
//  Created by jakouk on 2016. 9. 27..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSNumber *number1 = @(42-32);
        NSNumber *number2 = [[NSNumber alloc] initWithInteger:42];
        
        NSString *string = [[NSString alloc] initWithUTF8String:"hello world"];
        
        NSArray * array = @[ @"world",@"hello" ];
        
        NSDictionary *dictionary = @{
                                     @"name":@"name",
                                     @"date":@0403
                                     };
        
        NSMutableArray *objects = [[NSMutableArray alloc] init];
        //꼭 NSString Object만 넣을수 있다.
        [objects addObject:@"String"];
        
        NSInteger index = 3;
        id value1 = objects[index] ;

        id value2 = [objects objectAtIndexedSubscript:index];
    }
    return 0;
}

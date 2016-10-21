//
//  main.m
//  ObjectiveLifeCycle
//
//  Created by jakouk on 2016. 10. 20..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Myclass.h"

int main(int argc, const char * argv[]) {
    
    Myclass *instance = [[Myclass alloc] init];
    NSLog(@"%@",instance);
    instance = nil;
    
    NSLog(@"END");
    
    return 0;
}

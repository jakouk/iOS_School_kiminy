//
//  main.m
//  Example0928
//
//  Created by jakouk on 2016. 9. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLinkedList.h"
#import "Node.h"

int main(int argc, const char * argv[]) {
    
    
    DLinkedList *dlink = [[DLinkedList alloc]init];
    
    
    
    [dlink addLastValue:10];
    [dlink addLastValue:20];
    [dlink addLastValue:30];
    [dlink addLastValue:10];
    [dlink addLastValue:50];
    [dlink removeLast];
    
    [dlink printAllNode];
    
    [dlink searchData:10];
    
    return 0;
}

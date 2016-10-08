//
//  main.m
//  Algorithm
//
//  Created by jakouk on 2016. 10. 7..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SelectionSort.h"
#import "BubbleSort.h"
#import "InsertSort.h"
#import "MergeSort.h"


int main(int argc, const char * argv[]) {
    
    NSArray *data = @[@1,@5,@3,@2,@8,@10,@9,@7,@6,@4];
    
    SelectionSort *sSort = [[SelectionSort alloc]init];
    NSArray * sortedList = [sSort sort:data];
    NSLog(@"selectedSort: %@",sortedList);
    
    BubbleSort *bSort = [[BubbleSort alloc]init];
    NSArray *bSortedList = [bSort bubbleSort:data];
    NSLog(@"bubbleSort: %@",bSortedList);
    
    InsertSort *iSort = [[InsertSort alloc]init];
    NSArray *iSortedList = [iSort insertSort:data];
    NSLog(@"InsertSort: %@",iSortedList);

    MergeSort *mSort = [[MergeSort alloc]init];
    NSArray *mSortedList = [mSort mergeSort:data];
    NSLog(@"MergeSort: %@",mSortedList);
    
    
    return 0;
}

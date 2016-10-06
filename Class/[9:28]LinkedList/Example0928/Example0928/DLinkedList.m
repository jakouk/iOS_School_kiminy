//
//  DLinkedList.m
//  Example0928
//
//  Created by jakouk on 2016. 9. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "DLinkedList.h"

@implementation DLinkedList

    //초기화
    
    - (instancetype)init
    {
        self = [super init];
        if (self) {
            self.header = [[Node alloc]init];
            self.header.next = nil;
            self.header.preve = nil;
            self.lastIndex = 0;
            
        }
        return self;
    }
    
    //리스트의 마지막에 추가하는 방법
    //add(마지막에 데이터를 추가한다)
    
    -(void)addLastValue:(NSInteger)value
    {
        [self addLastIndexNode:self.header newValue:value];
    }
    
    -(void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value
    {
        //nowNode의 next가 nil이다.
        if(nowNode.next == nil){
            Node * newNode = [[Node alloc]init];
            newNode.value = value;
            newNode.preve = nowNode;
            newNode.next = nil;
            newNode.index = self.lastIndex;
            
            nowNode.next = newNode;
            self.lastIndex = self.lastIndex +1;
            
        }else{
            //nil이 아니다.
            [self addLastIndexNode:nowNode.next newValue:value];
        }
    }
    
    
    -(void)addLastIndexNodeLoop:(Node *)nowNode newValue:(NSInteger)value{
        
        while(nowNode.next == nil){
            
            if(nowNode.next == nil){
                
                Node * newNode = [[Node alloc]init];
                newNode.value = value;
                newNode.preve = nowNode;
                newNode.next = nil;
                newNode.index = self.lastIndex;
                
                nowNode.next = newNode;
                self.lastIndex = self.lastIndex +1;
                
            }
            
        }
    
    }
    
    
    
    
    
    //앞쪽으로 데이터 추가
    -(void)addFirstIndexNode:(NSInteger )newValue
    {
        
        Node * newNode = [[Node alloc]init];
        newNode.value = newValue;
        
        if(self.header.next == nil)
        {
            self.header.next = newNode;
            newNode.preve = self.header;
            newNode.next = nil;
        }
        else{
            
            newNode.preve = self.header;
            newNode.next = self.header.next;
            
            self.header.next = newNode;
            self.header.next.preve = newNode;
            
        }
        
    }
    

    //remove(데이터를 삭제한다.)
    -(void)remove{
        
    }
    
    //removeLast ( 마지막 데이터 삭제 )
    -(void)removeLast
    {
        [self removeLastNode:self.header];
    }
    
    -(void)removeLastNode:(Node *)node
    {
        if(node.next  == nil){
            
            node.preve.next = nil;
            node.preve = nil;
            
        }else{
            [self removeLastNode:node.next];
        }
    }
    
    
    //count(총 노드의 갯수룰 구한다 )
    
    //printNode( 모든 노드의 데이터를 출력한다 .)
    -(void)printAllNode
    {
        if(self.header.next == nil)
        {
            NSLog(@"데이터가 없습니다.");
        }
        
        [self printNode:self.header];
        
    }
    
    -(void)printNode:(Node *)node
    {
        if(node.next == nil){
            NSLog(@"%ld ",node.value);
        }else{
            if(self.header != node)
            {
                NSLog(@"%ld ",node.value);
            }
            [self printNode:node.next];
        }
    }
    
    //searchData ( 원하는 데이터를 찾는 로직 )
    -(void)searchData:(NSInteger)number{
        [self searchData:self.header number:number];
    }
    -(void)searchData:(Node *)node number:(NSInteger)number{
        //node의 value값이 입력한 값과 같으면 위치와 데이터를 출력한다.
        if(node.value == number){
            NSLog(@"%ld 번째가 %ld 입니다.",node.index,number);
            return;
        }else{
            if(node.next == nil){
                NSLog(@"원하는 데이터가 없습니다.");
                return;
            }
             [self searchData:node.next number:number];
        }
    }
    
    
//printIndex ( 해당 인덱스의 노드의 값을 찾는다. )
-(void)printIndex:(NSInteger)index{
    [self printIndexNodeData:self.header index:index];
}

// 해당하는 index의 값에 도달할때 까지 재귀함수를 진행한다. 
-(void)printIndexNodeData:(Node *)node index:(NSInteger)index
{
    if(node.index == index)
    {
        NSLog(@"%ld번 index의 값은 %ld 입니다.",node.index,node.value);
    }else{
        [self printIndexNodeData:node.next index:index];
    }
}



@end

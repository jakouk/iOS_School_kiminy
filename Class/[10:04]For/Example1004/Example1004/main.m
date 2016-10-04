//
//  main.m
//  Test
//
//  Created by jakouk on 2016. 10. 3..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *aoaAlbum = @{@"album_info":@{@"title": @"Heart Attack",@"artist" : @"AOA",}, @"song_list" : @[@{
                                                                                                                        @"name":@"심쿵해", @"artist":@"AOA", @"total_play_time": @223,@"song_info":@{
                                                                                                                                @"writer":@"용감한 형제들",@"composer":@"Mr.강",@"lyrics":@"완전 반해 반해 버렸어요\n부드러운 목소리에\n반해 반해 버렸어요\n난 떨려\n(AOA Let's Go!)"}},@{@"name":@"Luv Me", @"artist":@"AOA", @"total_play_time": @252,@"song_info":@{@"writer":@"용감한 형제들",@"composer":@"JS",@"lyrics":@"Do it this do it this girl\nDo it this do it this hey\nDo it this do it this girl\n "}},@{@"name":@"한개", @"artist":@"AOA", @"total_play_time": @238,@"song_info":@{@"writer":@"용감한 형제들",@"composer":@"별들의 전쟁",@"lyrics":@"딱 하루만 더 내게 시간을 줘\n우리 내일 다시 헤어지자고\n너와 끼던 반지 한 개 아무 의미 없이 남아\n우린 아니라는 말에 세상이 끝나버릴 것만 같아\n "}}],@"producer":@"FNC엔터테인먼트",@"album_story":@"AOA 3rd Mini Album [Heart Attack] Information\n\nAOA, 이번엔 ‘섹시 스포티’다! 세 번째 미니 앨범 ‘Heart Attack’ 전격 발매\n\nAOA, 무더위 날려 버릴 상큼발랄 서머송 ‘심쿵해’로 7개월 만의 컴백\n\n"};
        
        /*
         //nsArray 공부용 테스트 현재 객체 타입이다.
         NSArray *array = @[@"i",@"have",@"a",@1,@"hi",@"love"];
         NSLog(@"1st array : %@, 2nd array : %@, 3rd array : %@",[array objectAtIndex:1],[array objectAtIndex:2],[array objectAtIndex:3]);
         
         NSDictionary *dic = @{@"key":@"value",@"key1":@"value1",@"key2":@"value2",@"key3":@"value3"};
         
         NSArray *key = dic.allKeys;
         NSArray *value = dic.allValues;
         
         NSLog(@"%ld",[array count]);
         
         NSLog(@"1st key : %@, 2st key :%@ , 3rd key :%@, 4 key : %@",[key objectAtIndex:0],[key objectAtIndex:1],[key objectAtIndex:2],[key objectAtIndex:3]);
         
         NSString *name = @"kiminy";
         
         if([name isEqualToString:@"kiminy"]){
         NSLog(@"hello");
         }
         
         Test *test = [[Test alloc]init];
         NSLog(@"test : %@",test.hello);
         [test changeHello:@"love"];
         NSLog(@"test : %@",test.hello);
         
         
         CGFloat output = [Test changeLove:@"circle"];
         
         NSLog(@"%lf",output);
         */
        
        //구구단
        [Test getMultiplicationTable:3];
        
        //팩토리얼
        [Test factorial:5];
        
        //삼각수
        [Test triangularNum:5];
        
        //자리수 더라기
        [Test addAllNum:5792];
        
        //369게임
        [Test game369:20];
        
        //노래타이틀
        NSLog(@"%@",[Test songTitle:aoaAlbum]);
        
        //노래제목들 출력
        NSArray *songName = [Test songTileList:aoaAlbum];
        for(NSString *name in songName){
            NSLog(@"%@",name);
        }
        
        //노래제목으로 가사출력
        NSLog(@"%@",[Test lyricsSongTitleInput:@"심쿵해" data:aoaAlbum]);
        
        //노래제목으로 재생시간출력
        NSLog(@"%@",[Test songTime:@"심쿵해" data:aoaAlbum]);
        
        //369 제한 없는것 만드는중 가능하기는 하지만 최대 크기에 한계가 있다 mutableArray 인지 NSString 인지는 모름.
        [Test game369limited:1000];
        
        [Test addAllNumNew:5792];
    }
    return 0;
}

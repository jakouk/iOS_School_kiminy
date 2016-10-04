//
//  Test.m
//  Test
//
//  Created by jakouk on 2016. 10. 3..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "Test.h"


@interface Test()

@property NSString *hello;
@property NSString *love;
@property NSDictionary *dic;

@end


@implementation Test

const NSInteger width = 10;
const NSInteger height = 20;
const NSInteger r = 3;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.hello = @"hello";
    }
    return self;
}

//은닉화 연습 
-(void)changeHello:(NSString *)hallo{
    self.hello = hallo;
}

//은닉화 연습
+(CGFloat)changeLove:(NSString *)love{
    
    CGFloat area;
    if([love isEqualToString:@"square"]){
        area = width * height;
    }else{
        area = r*r*3.14;
    }
    
    return area;
}

-(void)charge{
    NSLog(@"%@",_love);
    NSLog(@"%@",_hello);
}

//+(void)getMultiplicationTable:(NSInteger)number{
//
//    NSInteger index = 0;
//
//    while(index<9){
//        NSLog(@"%ld * %ld = %ld",number,index +1, number * (index +1));
//        index +=1;
//    }
//
//}

//구구단
+(void)getMultiplicationTable:(NSInteger)number{
    
    NSInteger i = 0;
    
    for(i = 1; i<10; i+= 1){
        NSLog(@"%ld * %ld = %ld",number,i, number * i);
    }
    
}

//팩도리얼
+(void)factorial:(NSInteger)number{
    
    NSInteger result = 1;
    
    for(NSInteger i =1 ; i<number+1; i+=1){
        
        result = result * i;
        
    }
    NSLog(@"%ld",result);
}

//삼각수 ( 1~N 까지 숫자 모두 더하기 )
+(void)triangularNum:(NSInteger)number{
    
    NSInteger result = 0;
    
    for(NSInteger i = 1; i<number +1; i=i+1){
        result = result + i;
    }
    
    NSLog(@"%ld",result);
}

//숫자들의 각 자리 더하기
+(void)addAllNum:(NSInteger)number{
    
    
    NSInteger middle = number / 10;
    NSInteger result = number % 10;
    
    while(middle >= 10){
        
        result = result + middle % 10;
        middle = middle / 10;
        
    }
    
    result = result +middle%10;
    
    NSLog(@"%ld",result);
    
}

//숫자들의 각 자리 더라기
+(void)addAllNumNew:(NSInteger)number{
    
    NSInteger middle = number;
    NSInteger result = 0;
    
    while(middle >= 10){
        result = result + middle % 10;
        middle = middle / 10;
    }
    
    result = result +middle%10;
    
    NSLog(@"%ld",result);
    
}

//limited 369
+(void)game369limited:(NSInteger)number{
    
    NSMutableArray *game = [[NSMutableArray alloc]init];

    for (NSInteger i = 1 ; i<= number ; i += 1){
        
        NSInteger middle = i;
        NSInteger count = 0;
        
        while(middle >= 10){
            
            if(middle%10 ==3 || middle %10 == 6 || middle %10 == 9){
                count = count + 1;
            }
            middle = middle / 10;
            
        }
        
        if(middle%10 ==3 || middle %10 == 6 || middle %10 == 9){
            count = count + 1;
        }
        
        if(count > 0){
            [game addObject:@"* "];
        }else{
            NSString *str = [[NSString alloc]initWithFormat:@"%ld ",i];
            [game addObject:str];
        }
        count = 0;
        
    }
    
     NSString *str1 = [[NSString alloc]init];
    
    for(NSInteger i = 0 ; i<[game count]; i+=1){
        
        str1 = [str1 stringByAppendingString:game[i] ];
    }
    
    NSLog(@"%@",str1);
    
}



//369 게임
+(void)game369:(NSInteger)nubmer{
    
    NSMutableArray *game = [[NSMutableArray alloc]init];
    
    for(NSInteger i = 1; i<nubmer+1; i+=1){
        if(i%10 == 3 || i%10 == 6 || i%10 == 9){
            [game addObject:@"* "];
        }else{
            NSString *str = [[NSString alloc]initWithFormat:@"%ld ",i];
            
            [game addObject:str];
        }
    }
    
    NSString *str1 = [[NSString alloc]init];
    
    for(NSInteger i = 0 ; i<[game count]; i+=1){
        
        str1 = [str1 stringByAppendingString:game[i] ];
    }
    
    NSLog(@"%@",str1);
}

//limited 369
+(void)limitedGame369:(NSInteger)number{
    
    
    NSInteger count = 0;
    NSMutableArray *game = [[NSMutableArray alloc]init];
    
    for(NSInteger i = 1; i<number ; i+= 1){
    
        NSInteger origin = i;
        NSInteger flexNumber = i;
        
        if(i < 10){
            
            if(i%10 == 3 || i%10 == 6 || i%10 == 9){
                count = count +1;
            }
            
        }else{
            
            while(i < 10){
                
                if(i%10 == 3 || i%10 == 6 || i%10 == 9){
                    count = count +1;
                }
                
                i = flexNumber % 10;
                flexNumber = flexNumber / 10;
                
            }
            if(i%10 == 3 || i%10 == 6 || i%10 == 9){
                count = count +1;
            }

        }
    
        if(count > 0){
            [game addObject:@"* "];
        }else{
            NSString *str = [[NSString alloc]initWithFormat:@"%ld ",origin];
            
            [game addObject:str];
        }
        count = 0;
    }
    
    NSString *str1 = [[NSString alloc]init];
    
    for(NSInteger i = 0 ; i<[game count]; i+=1){
        
        str1 = [str1 stringByAppendingString:game[i] ];
    }
    
    NSLog(@"%@",str1);

}

//앨범 제목을 가져오는 메서드
+(NSString *)songTitle:(NSDictionary *)data{
    
    if(data != nil){
        NSMutableDictionary *album_info = [data objectForKey:@"album_info"];
        NSString *title =  [album_info objectForKey:@"title"];
        return title;
    }else{
        return nil;
    }
    
}

//노래 제목들 배열로 출력
+(NSArray *)songTileList:(NSDictionary *)data{
    
    NSArray *song_list = [data objectForKey:@"song_list"];
    
    NSMutableArray *name = [[NSMutableArray alloc]init];
    
    for(NSDictionary *songName in song_list){
        [name addObject:[songName objectForKey:@"name"]];
    }
    return name;
    
}

//song_info 출력
+(NSArray *)songDataList:(NSDictionary *)data{
    
    NSArray *song_list = [data objectForKey:@"song_list"];
    
    NSMutableArray *name = [[NSMutableArray alloc]init];
    
    for(NSDictionary *songName in song_list){
        [name addObject:[songName objectForKey:@"song_info"]];
    }
    return name;
    
}

//노래 제목으로 가사 찾기 
+(NSString *)lyricsSongTitleInput:(NSString *)title data:(NSDictionary *)data{
    
    NSArray *song_list = [data objectForKey:@"song_list"];
    NSMutableDictionary *thisSong = [[NSMutableDictionary alloc]init];
    
    for(NSMutableDictionary *songName in song_list){
        if([title isEqualToString:[songName objectForKey:@"name"]]){
            thisSong = [songName objectForKey:@"song_info"];
        }
    }
    
    NSString *lyrics = [thisSong objectForKey:@"lyrics"];
    
    return lyrics;
}

//노래제목으로 재생시간
+(NSDate *)songTime:(NSString *)title data:(NSDictionary *)data{
    
    NSArray *song_list = [data objectForKey:@"song_list"];
    NSDate *totalPlay;
    
    for(NSMutableDictionary *songName in song_list){
        if([title isEqualToString:[songName objectForKey:@"name"]]){
            totalPlay = [songName objectForKey:@"total_play_time"];
        }
    }
    return totalPlay;
}

@end

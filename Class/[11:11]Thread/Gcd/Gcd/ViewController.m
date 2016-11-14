//
//  ViewController.m
//  Gcd
//
//  Created by jakouk on 2016. 11. 11..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    dispatch_queue_t global =  dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
    
    for (NSInteger i = 0; i<1000; i++) {
    dispatch_async(mainQueue, ^{
        
            for (NSInteger j = 0; j <1000; j++) {
                
            }
        NSLog(@"hiMain %ld",i);
        });
    }
    dispatch_async(mainQueue, ^{NSLog(@"after For");});
    
    for (NSInteger i = 0; i<1000; i++) {
    dispatch_async(global, ^{
        
            for (NSInteger j = 0; j <1000; j++) {
                
            }
            NSLog(@"hiGlobal %ld",i);
        
    });
}
    
    dispatch_queue_t queue = dispatch_queue_create("hello", DISPATCH_QUEUE_SERIAL);
    dispatch_async(queue, ^{NSLog(@"serial 1");});
    dispatch_async(queue, ^{NSLog(@"serial 2");});
    dispatch_async(queue, ^{NSLog(@"serial 3");});
    dispatch_async(queue, ^{NSLog(@"serial 4");});
    dispatch_async(queue, ^{NSLog(@"serial 5");});
    
    dispatch_queue_t queue1 = dispatch_queue_create("hello", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue1, ^{NSLog(@"CONCURRENT async 1");});
    dispatch_async(queue1, ^{NSLog(@"CONCURRENT async 2");});
    dispatch_async(queue1, ^{NSLog(@"CONCURRENT async 3");});
    dispatch_async(queue1, ^{NSLog(@"CONCURRENT async 4");});
    dispatch_async(queue1, ^{NSLog(@"CONCURRENT async 5");});
    
    dispatch_queue_t queue2 = dispatch_queue_create("hello", DISPATCH_QUEUE_CONCURRENT);
    dispatch_sync(queue2, ^{NSLog(@"CONCURRENT sync 1");});
    dispatch_sync(queue2, ^{NSLog(@"CONCURRENT sync 2");});
    dispatch_sync(queue2, ^{NSLog(@"CONCURRENT sync 3");});
    dispatch_sync(queue2, ^{NSLog(@"CONCURRENT sync 4");});
    dispatch_sync(queue2, ^{NSLog(@"CONCURRENT sync 5");});
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

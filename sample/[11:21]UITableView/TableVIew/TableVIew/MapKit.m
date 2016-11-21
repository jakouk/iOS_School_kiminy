//
//  MapKit.m
//  TableVIew
//
//  Created by jakouk on 2016. 11. 21..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "MapKit.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapKit ()

@end

@implementation MapKit

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(37.5745,126.9769);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.1,0.1);
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate,span);
    //[self.map setRegion :region];
    
    //  [self.map setShowsUserLocation:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

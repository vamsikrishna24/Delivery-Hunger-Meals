//
//  HMDeliveryStatusViewController.m
//  HungerMealsDelivery
//
//  Created by Vamsi on 17/09/16.
//  Copyright © 2016 Sukor. All rights reserved.
//

#import "HMDeliveryStatusViewController.h"

@interface HMDeliveryStatusViewController ()

@end

@implementation HMDeliveryStatusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CLLocationCoordinate2D startCoord = CLLocationCoordinate2DMake(47.081012, 2.398781);
    MKCoordinateRegion adjustedRegion = [self.mapView regionThatFits:MKCoordinateRegionMakeWithDistance(startCoord, 3000000, 3000000)];
    [self.mapView setRegion:adjustedRegion animated:YES];
    
    [self showLines];
    // Do any additional setup after loading the view.
}- (void)showLines {
    CLLocationCoordinate2D *pointsCoordinate = (CLLocationCoordinate2D *)malloc(sizeof(CLLocationCoordinate2D) * 3);
    pointsCoordinate[0] = CLLocationCoordinate2DMake(17.6868, 83.2185);
    pointsCoordinate[1] = CLLocationCoordinate2DMake(18.4164, 84.0459);
   // pointsCoordinate[2] = CLLocationCoordinate2DMake(43.296482, 5.369779);
    
    
    MKPolyline *polyline = [MKPolyline polylineWithCoordinates:pointsCoordinate count:2];
    free(pointsCoordinate);
    
    [self.mapView addOverlay:polyline];
}
- (MKPolylineRenderer *)mapView:(MKMapView *)mapView viewForOverlay:(id)overlay{
    
    // create a polylineView using polyline overlay object
    MKPolylineRenderer *polylineView = [[MKPolylineRenderer alloc] initWithPolyline:overlay];
    
    // Custom polylineView
    polylineView.strokeColor =  [UIColor blueColor];
    polylineView.lineWidth = 2.0;
    polylineView.alpha = 0.5;
    
    return polylineView;
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

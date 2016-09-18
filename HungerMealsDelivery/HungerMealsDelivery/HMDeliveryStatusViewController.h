//
//  HMDeliveryStatusViewController.h
//  HungerMealsDelivery
//
//  Created by Vamsi on 17/09/16.
//  Copyright © 2016 Sukor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface HMDeliveryStatusViewController : UIViewController<MKMapViewDelegate,MKAnnotation,MKOverlay>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;




@end

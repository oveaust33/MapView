//
//  ViewController.h
//  MapAPP
//
//  Created by ove on 24/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface ViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>
{
    CLLocationManager *locationmanager;
    
}





- (IBAction)Direction:(id)sender;

@property (strong, nonatomic) IBOutlet MKMapView *map;



- (IBAction)standard:(id)sender;
- (IBAction)Sattelite:(id)sender;
- (IBAction)hybrid:(id)sender;

- (IBAction)locate:(id)sender;



@end


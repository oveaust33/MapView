//
//  ViewController.m
//  MapAPP
//
//  Created by ove on 24/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import "ViewController.h"
#import "mapPin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span ;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta=0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = 23.7638191;
    location.longitude=90.40688550000004;
    
    region.span=span;
    region.center=location;
    
    [self.map setRegion:region animated:YES];
    
    
    mapPin *pin =[[mapPin alloc]init];
    pin.coordinate = location;
    
    [self.map addAnnotation:pin];
    
    //LocateBUtton WORK
     //[ei dui self line dia locate press korle zoom hoi and oine nia jai]
    
    locationmanager.delegate =self;
    self.map.delegate = self;
    
    
    locationmanager = [[CLLocationManager alloc]init]; //allocate kora loaction manager re
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//Direction Not working

- (IBAction)Direction:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/maps?daddr=23.7638191,90.40688550000004"] options:@{} completionHandler:nil];
}



// MApView Types

- (IBAction)standard:(id)sender {
    self.map.mapType = MKMapTypeStandard;
}

- (IBAction)Sattelite:(id)sender {
    
    self.map.mapType = MKMapTypeSatellite;
}

- (IBAction)hybrid:(id)sender {
    
    self.map.mapType = MKMapTypeHybrid;
}




- (IBAction)locate:(id)sender {
    
    [locationmanager requestAlwaysAuthorization];
    [locationmanager requestWhenInUseAuthorization];
    
    [locationmanager startUpdatingLocation];
    
    self.map.showsUserLocation =YES;
    
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
    
    
    MKCoordinateRegion region;
    MKCoordinateSpan span ;
    
    span.latitudeDelta = 0.005;
    span.longitudeDelta=0.005;
    
    CLLocationCoordinate2D location;
    
    location.latitude = userLocation.coordinate.latitude;
    location.longitude=userLocation.coordinate.longitude;
    
    region.span=span;
    region.center=location;
    
    [self.map setRegion:region animated:YES];
    
}



@end

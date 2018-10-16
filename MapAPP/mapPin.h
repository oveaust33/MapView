//
//  mapPin.h
//  MapAPP
//
//  Created by ove on 24/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface mapPin : NSObject <MKAnnotation>


@property (nonatomic , assign) CLLocationCoordinate2D coordinate;

@end

//
//  HBBeacon.h
//  HappyBeacon
//
//  Created by Jean-Andrei DIACONU on 12/02/2014.
//  Copyright (c) 2014 HB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HBBeacon : NSObject

- (id)initWithUUID:(NSString *)uuid data:(NSDictionary *)data distance:(float)distance;

// HappyBeacon identification
@property (strong, nonatomic, readonly) NSString *uuid;
@property (strong, nonatomic, readonly) NSNumber *major;
@property (strong, nonatomic, readonly) NSNumber *minor;

// HappyBeacon data
@property (strong, nonatomic, readonly) NSDictionary *data;

// HappyBeacon distance in m
@property (nonatomic, readonly) float distance;

@end

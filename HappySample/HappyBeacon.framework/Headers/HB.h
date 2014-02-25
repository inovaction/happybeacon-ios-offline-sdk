/*
 Copyright 2014 HappyBeacon
 All rights reserved.
 
 All information contained herein is, and remains the property
 of HappyBeacon and its suppliers, if any. The intellectual and
 technical concepts contained herein are proprietary to HappyBeacon.
 Dissemination of this information or reproduction of this material
 is strictly forbidden unless prior written permission is obtained
 from HappyBeacon.
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// Import objects
#import "HBBeacon.h"

@protocol HBDelegate <NSObject> // HB delegate

@required
- (void)beaconsInRange:(NSSet *)beacons;

@optional
- (void)didEnterRangeOfBeacon:(HBBeacon *)beacon;
- (void)didExitRangeOfBeacon:(HBBeacon *)beacon;

@end

@interface HB : NSObject

+ (HB *)shared;

///--------------------------------------- Public API HappyBeacon Offline ---------------------------------------///

- (void)go; // Called when back to foregrond
- (void)gone; // Called when gone to background

@property (nonatomic, getter = shouldShowLogs) BOOL showLogs;

@end

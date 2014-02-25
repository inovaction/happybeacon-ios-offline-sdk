//
//  AppDelegate.m
//  HappySample Offline
//
//  Created by Jean-Andrei DIACONU on 13/02/2014.
//  Copyright (c) 2014 HB. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[HB shared] gone];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [[HB shared] go];
}

- (void)showLocalNotification:(NSString *)message {
    // Show local notification
    UILocalNotification *notification = [[UILocalNotification alloc]init];
    [notification setAlertBody:message];
    [notification setRepeatInterval:0]; // Never
    [notification setFireDate:[NSDate dateWithTimeIntervalSinceNow:1]];
    [notification setTimeZone:[NSTimeZone defaultTimeZone]];
    [[UIApplication sharedApplication] setScheduledLocalNotifications:[NSArray arrayWithObject:notification]];
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
    // Show alert if in foreground
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:notification.alertBody message:nil delegate:nil cancelButtonTitle:@"Happy" otherButtonTitles:nil];
    [alert show];
}

#pragma mark HBDelegate methods

- (void)beaconsInRange:(NSSet *)beacons {
    NSLog(@"List of %@", beacons);
}

- (void)didEnterRangeOfBeacon:(HBBeacon *)beacon {
    NSLog(@"Entered %@", beacon.data);
    
    // Show local notification
    [self showLocalNotification:beacon.data[@"message_enter"]];
}

- (void)didExitRangeOfBeacon:(HBBeacon *)beacon {
    NSLog(@"Exited %@", beacon.data);
    
    // Show local notification
    [self showLocalNotification:beacon.data[@"message_exit"]];
}

@end

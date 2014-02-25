HappyBeacon
iOS Offline Library

------------------------------------------------------------------------------------------
Xcode integration
------------------------------------------------------------------------------------------

1) Download and unzip the zip file

2) Drag HappyBeacon.framework in the Frameworks section of you project in Xcode

3) Add required libraries: CoreLocation.framework

4) Create the HBData.plist file with same structure as the one provided in the HappySample project

5) At the top of your application delegate include required header: 

#import <HappyBeacon/HB.h>

6) Init the library for foreground & background use

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[HB shared] gone];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [[HB shared] go];
}

7) Implement the HBDelegate protocol in your application delegate

- (void)beaconsInRange:(NSSet *)beacons;
- (void)didEnterRangeOfBeacon:(HBBeacon *)beacon;
- (void)didExitRangeOfBeacon:(HBBeacon *)beacon;

------------------------------------------------------------------------------------------
Sample
------------------------------------------------------------------------------------------

See attached HappySample project which handles entering/exiting by showing a simple alert.

------------------------------------------------------------------------------------------
FAQ
------------------------------------------------------------------------------------------

Question 1 : Is there a delay for the detection when the application is in background ?

Answer : When the application is in background the detection is not triggered instantly. There is a short delay that could be changed by Apple in further versions of iOS.

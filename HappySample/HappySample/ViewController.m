//
//  ViewController.m
//  HappySample Offline
//
//  Created by Jean-Andrei DIACONU on 13/02/2014.
//  Copyright (c) 2014 HB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.image.image = ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone && [UIScreen mainScreen].bounds.size.height == 568.0) ? [UIImage imageNamed:@"LaunchImage-700-568h@2x.png"] : [UIImage imageNamed:@"LaunchImage-700@2x.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end

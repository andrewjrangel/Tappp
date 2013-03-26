//
//  AppDelegate.m
//  Tappp
//
//  Created by Ventura Rangel on 3/25/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor orangeColor];
    
    self.mainView = [[MainViewController alloc] init];
    
    self.window.rootViewController = self.mainView;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end

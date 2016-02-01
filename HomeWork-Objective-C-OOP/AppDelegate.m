//
//  AppDelegate.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.data = [[LocalData alloc] init];
    
    NSArray *phones = [NSArray arrayWithObjects:[[GSM alloc] initWithManifacturer:@"Iphone"
                                                                            model:@"4S"
                                                                            price:@1000
                                                                            owner:@"PESHO"
                                                                          battery:[[Battery alloc] initWithBatteryModel:@"bt-1021"
                                                                                                              hoursIdle:@49 andHoursTalk:@49
                                                                                                         andBatteryType:(BatteryType)NiMH]
                                                                          display:[[Display alloc] init]],
                       
                       [[GSM alloc] initWithManifacturer:@"Samsung"
                                                   model:@"Galaxy S6"
                                                   price:@900
                                                   owner:@"Gosho"
                                                 battery:[[Battery alloc] initWithBatteryModel:@"bt-9974"
                                                                                     hoursIdle:@30 andHoursTalk:@30
                                                                                andBatteryType:(BatteryType)LiIon]
                                                 display:[[Display alloc] init]],
                       
                       [[GSM alloc] initWithManifacturer:@"Samsung"
                                                   model:@"Galaxy S5"
                                                   price:@600
                                                   owner:@"Misho"
                                                 battery:[[Battery alloc] initWithBatteryModel:@"bt-0074"
                                                                                     hoursIdle:@10 andHoursTalk:@50
                                                                                andBatteryType:(BatteryType)NiCd]
                                                 display:[[Display alloc] initWithDiagonal:@8
                                                                         andNumberOfColors:@545454]],
                       
                       [[GSM alloc] initWithManifacturer:@"Iphone"
                                                   model:@"5C"
                                                   price:@1000
                                                   owner:@"Stamat"
                                                 battery:[[Battery alloc] initWithBatteryModel:@"bt-9004"
                                                                                     hoursIdle:@49 andHoursTalk:@49
                                                                                andBatteryType:(BatteryType)NiMH]
                                                 display:[[Display alloc] initWithDiagonal:@9
                                                                         andNumberOfColors:@459000]],
                       
                       [[GSM alloc] initWithManifacturer:@"HTC"
                                                   model:@"Desire S"
                                                   price:@1000
                                                   owner:@"Sasho"
                                                 battery:[[Battery alloc] initWithBatteryModel:@"bt-9933"
                                                                                     hoursIdle:@19 andHoursTalk:@19
                                                                                andBatteryType:(BatteryType)NiMH]
                                                 display:[[Display alloc] initWithDiagonal:@4
                                                                         andNumberOfColors:@10000]]
                       
                       ,nil];
    
            [phones enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [self.data addPhone:obj];
                }];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

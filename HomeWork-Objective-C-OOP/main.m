//
//  main.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "GSM.h"
#import "Display.h"
#import "Battery.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));

//        
//        GSM *phone = [[GSM alloc] initWithManifacturer:@"LG"
//                                                 model:@"www"
//                                                 price:@2000
//                                                 owner:@"Pencho"
//                                               battery:[[Battery alloc] initWithBatteryModel:@"NOV" hoursIdle:@300 andHoursTalk:@30 andBatteryType:(BatteryType)LiIon]
//                                               display:[[Display alloc] init]];
//        
//        NSLog(@"%@",phone.description);
//        
//        
//        GSM *pi = [GSM IPhone5S];
//        NSLog(@"%@",pi.description);
//        
//        return 0;
    }
}

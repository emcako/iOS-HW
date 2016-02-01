//
//  MobilePhone.h
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Battery.h"
#import "Display.h"

@interface GSM : NSObject

@property NSString *model;

@property NSString *manifacturer;

@property NSNumber *price;

@property NSString *owner;

@property Battery *battery;

@property Display *display;

-(instancetype) initWithManifacturer:(NSString*)manifacturer
                            andModel:(NSString*)model;

-(instancetype) initWithManifacturer:(NSString*)manifacturer
                               model:(NSString*)model
                               price:(NSNumber*)price
                               owner:(NSString*)owner
                             battery:(Battery*)battery
                             display:(Display*)display;



@end

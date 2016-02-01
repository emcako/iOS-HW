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

@property (strong, nonatomic) NSString *manifacturer;

@property (strong, nonatomic) NSString *model;

@property (strong, nonatomic) NSNumber *price;

@property (strong, nonatomic) NSString *owner;

@property (strong, nonatomic) Battery *battery;

@property (strong, nonatomic) Display *display;


+(GSM*) IPhone5S;


-(instancetype) initWithManifacturer:(NSString*)manifacturer
                            andModel:(NSString*)model
                            andPrice:(NSNumber*)price;

-(instancetype) initWithManifacturer:(NSString*)manifacturer
                               model:(NSString*)model
                               price:(NSNumber*)price
                               owner:(NSString*)owner
                             battery:(Battery*)battery
                             display:(Display*)display;

+(GSM*) gsmManifacturer:(NSString*)manifacturer
               andModel:(NSString*)model
               andPrice:(NSNumber*)price;

+(GSM*) gsmWithManifacturer:(NSString*)manifacturer
                      model:(NSString*)model
                      price:(NSNumber*)price
                      owner:(NSString*)owner
                    battery:(Battery*)battery
                    display:(Display*)display;

@end

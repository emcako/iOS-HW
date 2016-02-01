//
//  Battery.h
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSInteger,BatteryType) {
    LiIon = 1 ,
    NiMH ,
    NiCd 
};

@interface Battery : NSObject

@property (strong, nonatomic) NSString *batteryModel;
@property (strong, nonatomic) NSNumber *hoursIdle;
@property (strong, nonatomic)  NSNumber *hoursTalk;
@property BatteryType type;


-(instancetype) initWithBatteryModel:(NSString*) batteryModel
                           hoursIdle:(NSNumber*) hoursIdle
                        andHoursTalk:(NSNumber*) hoursTalk;

-(instancetype) initWithBatteryModel:(NSString*) batteryModel
                           hoursIdle:(NSNumber*) hoursIdle
                        andHoursTalk:(NSNumber*) hoursTalk
                      andBatteryType:(BatteryType) type;

+(Battery *) batteryWithBatteryModel:(NSString*) batteryModel
                           hoursIdle:(NSNumber*) hoursIdle
                        andHoursTalk:(NSNumber*) hoursTalk;

+(Battery *) batteryWithBatteryModel:(NSString*) batteryModel
                           hoursIdle:(NSNumber*) hoursIdle
                        andHoursTalk:(NSNumber*) hoursTalk
                      andBatteryType:(BatteryType) type;
@end

//
//  Battery.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "Battery.h"

@interface Battery()


@end

@implementation Battery

{
 NSString *_batteryModel;
 NSNumber *_hoursIdle;
 NSNumber *_hoursTalk;

}






-(instancetype)init{
    return [self initWithBatteryModel:@"Unknown"
                            hoursIdle:@0 andHoursTalk:@0 andBatteryType:(BatteryType)LiIon];
}

-(instancetype)initWithBatteryModel:(NSString*)batteryModel
                          hoursIdle:(NSNumber*) hoursIdle
                       andHoursTalk:(NSNumber*) hoursTalk{
    self = [super init];
    
    if (self) {
        self.batteryModel = batteryModel;
        self.hoursIdle = hoursIdle;
        self.hoursTalk = hoursTalk;
    }
    return self;
}

-(instancetype)initWithBatteryModel:(NSString *)batteryModel
                          hoursIdle:(NSNumber *)hoursIdle
                       andHoursTalk:(NSNumber *)hoursTalk
                     andBatteryType:(BatteryType)type{
    
    self = [super init];
    if (self) {
        self.batteryModel = batteryModel;
        self.hoursIdle = hoursIdle;
        self.hoursTalk = hoursTalk;
        self.type = type;
    }
    return  self;
}


+(Battery *)batteryWithBatteryModel:(NSString *)batteryModel hoursIdle:(NSNumber *)hoursIdle andHoursTalk:(NSNumber *)hoursTalk {
    
    Battery *battery = [[Battery alloc] init];

    battery.batteryModel = batteryModel;
    battery.hoursIdle = hoursIdle;
    battery.hoursTalk = hoursTalk;
    
    return  battery;
}


+(Battery *)batteryWithBatteryModel:(NSString *)batteryModel hoursIdle:(NSNumber *)hoursIdle andHoursTalk:(NSNumber *)hoursTalk andBatteryType:(BatteryType)type{
    Battery *battery = [[Battery alloc] init];
    
    battery.batteryModel = batteryModel;
    battery.hoursIdle = hoursIdle;
    battery.hoursTalk = hoursTalk;
    battery.type = type;
    
    return  battery;
    
}


//GETTER
-(NSString *) batteryModel{
    return _batteryModel;
}

//SETTER
-(void)setBatteryModel:(NSString *) batteryModel{
    if(batteryModel.length < 2 || 10 < batteryModel.length) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong batteryModel"
                                                      reason:@"BatteryModel must be between 2 and 10 letters"
                                                    userInfo:nil];
        [ex raise];
    }
    _batteryModel = batteryModel;
    
}

-(NSNumber *) hoursIdle{
    return _hoursIdle;
}


-(void)setHoursIdle:(NSNumber *) hoursIdle{
    NSNumber *minLength = [NSNumber numberWithInt:0];
    NSNumber *maxLength = [NSNumber numberWithInt:500];
                           
    if(hoursIdle < minLength || maxLength < hoursIdle) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong hoursIdle"
                                                      reason:@"HoursIdle must be between 0 and 500 hours"
                                                    userInfo:nil];
        [ex raise];
    }
    _hoursIdle = hoursIdle;
    
}


-(NSNumber *) hoursTalk{
    return _hoursTalk;
}


-(void)setHoursTalk:(NSNumber *) hoursTalk{
    NSNumber *minLength = [NSNumber numberWithInt:0];
    NSNumber *maxLength = [NSNumber numberWithInt:50];
    
    if(hoursTalk < minLength || maxLength < hoursTalk) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong hoursTalk"
                                                      reason:@"HoursTalk must be between 0 and 50 hours"
                                                    userInfo:nil];
        [ex raise];
    }
    _hoursTalk = hoursTalk;
    
}

@end

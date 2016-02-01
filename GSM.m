//
//  MobilePhone.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "GSM.h"

@implementation GSM

-(instancetype)init{
    return [self initWithManifacturer:@"IPhone" andModel:@"6S"];
}

-(instancetype)initWithManifacturer:(NSString *)manifacturer
                           andModel:(NSString *)model{
    self = [super init];
    if (self) {
        self.manifacturer = manifacturer;
        self.model = model;
    }
    return  self;
}


-(instancetype)initWithManifacturer:(NSString *)manifacturer
                              model:(NSString *)model
                              price:(NSNumber *)price
                              owner:(NSString *)owner
                            battery:(Battery *)battery
                            display:(Display *)display{
    
    self = [super init];
    if (self) {
        self.manifacturer = manifacturer;
        self.model = model;
        self.price = price;
        self.owner = owner;
        self.battery = battery;
        self.display = display;
        
    }
    return  self;
}

//ToSTRing metohod
-(NSString *)description{
    return  [NSString stringWithFormat:@" \n Manifacturer --> %@ \n Model --> %@ \n Price --> %@ \n Owner --> %@ \n Battery : \n     BatteryModel --> %@ \n     HoursIdle --> %@ \n     HoursTalk --> %@  \n Display : \n     Diagonal --> %@ \n     NumberOfColors --> %@",
             self.manifacturer,
             self.model,
             self.price,
             self.owner,
             self.battery.batteryModel,
             self.battery.hoursIdle,
             self.battery.hoursTalk,
             self.display.diagonal,
             self.display.numberOfColors];
}
@end

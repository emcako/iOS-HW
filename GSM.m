//
//  MobilePhone.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "GSM.h"

@interface GSM ()

// private




@end


@implementation GSM
{
    NSString  *_manifacturer;
    NSString  *_model;
    NSNumber *_price;
    NSString *_owner;
}
+(GSM *)IPhone5S{
    return [[GSM alloc] initWithManifacturer:@"IPhone"
                                        model:@"5s"
                                        price:@1300
                                        owner:@"John Doe"
                                      battery:[[Battery alloc] initWithBatteryModel:@"Standard" hoursIdle:@450 andHoursTalk:@40 andBatteryType:(BatteryType)LiIon]
                                      display:[[Display alloc] initWithDiagonal:@5 andNumberOfColors:@200300]];
}

-(instancetype)init{
    return [self initWithManifacturer:@"IPhone" andModel:@"6S" andPrice:@2000];
}

-(instancetype)initWithManifacturer:(NSString *)manifacturer
                           andModel:(NSString *)model
                           andPrice:(NSNumber *)price{
    self = [super init];
    if (self) {
        self.manifacturer = manifacturer;
        self.model = model;
        self.price = price;
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


+(GSM *)gsmManifacturer:(NSString *)manifacturer andModel:(NSString *)model andPrice:(NSNumber *)price{
   
    GSM *gsm = [[GSM alloc] init];
    
    gsm.manifacturer = manifacturer;
    gsm.model = model;
    gsm.price = price;
    
    return gsm;

}

+(GSM *)gsmWithManifacturer:(NSString *)manifacturer model:(NSString *)model price:(NSNumber *)price owner:(NSString *)owner battery:(Battery *)battery display:(Display *)display{
    
    GSM *gsm = [[GSM alloc] init];

    gsm.manifacturer = manifacturer;
    gsm.model = model;
    gsm.price = price;
    gsm.owner = owner;
    gsm.battery = battery;
    gsm.display = display;
    
    return  gsm;
}

//GETTER
-(NSString *) manifacturer{
    return _manifacturer;
}

//SETTER
-(void)setManifacturer:(NSString *) manifacturer{
    if(manifacturer.length < 2 || 10 < manifacturer.length) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong Manifacturer"
                                                      reason:@"Manifacturer must be between 2 and 10 letters"
                                                    userInfo:nil];
        [ex raise];
    }
    _manifacturer = manifacturer;

}

-(NSString *)model{
    return _model;
}

-(void)setModel:(NSString *)model{
    if (model.length < 1 || 10 < model.length) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong Model"
                                                      reason:@"Model must be between 3 and 10 letters"
                                                    userInfo:nil];
        [ex raise];
    }
    _model = model;
}



-(NSNumber *)price{
    return _price;
}


-(void)setPrice:(NSNumber *)price{
    NSNumber *minLength = [NSNumber numberWithInt:50];
    NSNumber *maxLength = [NSNumber numberWithInt:3000];
    if (price < minLength || maxLength < price) {
        NSException *ex =[[NSException alloc] initWithName:@"Wrong Price"
                                                    reason:@"Price must be between 50 and 3000 "
                                                  userInfo:nil];
        [ex raise];

    }
    _price = price;
}

-(NSString *) owner{
    return _owner;
}

//SETTER
-(void)setOwner:(NSString *) owner{
    if(owner.length < 4 || 20 < owner.length) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong Owner"
                                                      reason:@"Owner must be between 4 and 20 letters"
                                                    userInfo:nil];
        [ex raise];
    }
    _owner= owner;
    
}



//static GSM *IPhone;
//
//+(instancetype)initWhithGSM:(GSM *)Iphone{
//    GSM *gsm = [[GSM alloc] init];
//    gsm.manifacturer =@"IPhone";
//    gsm.model = @"4S";
//    gsm.price = @1800;
//    gsm.owner = @"Pencho";
//    gsm.battery = [[Battery alloc] initWithBatteryModel:@"Li-Ion" hoursIdle:@40 andHoursTalk:@300];
//    gsm.display = [[Display alloc] initWithDiagonal:@4.5 andNumberOfColors:@512];
//    
//    
//    return gsm;
//}



//ToSTRing metohod
-(NSString *)description{
    return  [NSString stringWithFormat:@" \n Manifacturer --> %@ \n Model --> %@ \n Price --> %@ \n Owner --> %@ \n Battery : \n     BatteryModel --> %@ \n     HoursIdle --> %@ \n     HoursTalk --> %@ \n     BatteryType --> %ld  \n Display : \n     Diagonal --> %@ \n     NumberOfColors --> %@",
             self.manifacturer,
             self.model,
             self.price,
             self.owner,
             self.battery.batteryModel,
             self.battery.hoursIdle,
             self.battery.hoursTalk,
             self.battery.type,
             self.display.diagonal,
             self.display.numberOfColors];
}
@end

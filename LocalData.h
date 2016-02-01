//
//  LocalData.h
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 29/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GSM.h"

@interface LocalData : NSObject

-(NSArray*) phones;

-(void) addPhone: (GSM *) phone;

-(void) deletePhone: (GSM *) phone;

@end

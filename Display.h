//
//  Display.h
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Display : NSObject

@property (strong, nonatomic) NSNumber *diagonal;
@property (strong, nonatomic) NSNumber *numberOfColors;


-(instancetype) initWithDiagonal: (NSNumber*) diagonal;
-(instancetype) initWithDiagonal: (NSNumber*) diagonal
               andNumberOfColors: (NSNumber*) numberOfColors;

+(Display *) displayWithDiagonal: (NSNumber*) diagonal;
+(Display *) displayWithDiagonal: (NSNumber*) diagonal
               andNumberOfColors: (NSNumber*) numberOfColors;


@end

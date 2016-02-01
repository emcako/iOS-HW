//
//  Display.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 26/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "Display.h"


@implementation Display
{

 NSNumber *_diagonal;
 NSNumber *_numberOfColors;

}

-(instancetype)init{
    return [self initWithDiagonal:@5
                andNumberOfColors:@9999];
}

-(instancetype) initWithDiagonal:(NSNumber *)diagonal{
    self = [super init];
    if (self) {
        self.diagonal = diagonal;
    }
    return self;
    
}

-(instancetype)initWithDiagonal:(NSNumber *)diagonal
              andNumberOfColors:(NSNumber *)numberOfColors{
    self = [super init];
    if (self) {
        self.diagonal = diagonal;
        self.numberOfColors = numberOfColors;
    }
    return  self;
}

+(Display *)displayWithDiagonal:(NSNumber *)diagonal{

    Display *display = [[Display alloc] init];
    
    display.diagonal = diagonal;
    
    return display;
}

+(Display *)displayWithDiagonal:(NSNumber *)diagonal andNumberOfColors:(NSNumber *)numberOfColors{
    Display *display = [[Display alloc] init];
    
    display.diagonal = diagonal;
    display.numberOfColors = numberOfColors;
    
    return display;
}

//GETTER
-(NSNumber *) diagonal{
    return _diagonal;
}

//SETTER
-(void)setDiagonal:(NSNumber *) diagonal{
    NSNumber *minLength = [NSNumber numberWithInt:0];
    NSNumber *maxLength = [NSNumber numberWithInt:10];

    
    if(diagonal < minLength || maxLength < diagonal) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong diagonal"
                                                      reason:@"Diagonal must be between 0 and 10 "
                                                    userInfo:nil];
        [ex raise];
    }
    _diagonal = diagonal;
    
}

-(NSNumber *) numberOfColors{
    return _numberOfColors;
}


-(void)setNumberOfColors:(NSNumber *) numberOfColors{
    NSNumber *minLength = [NSNumber numberWithInt:256];
    NSNumber *maxLength = [NSNumber numberWithInt:INT32_MAX];
    
    
    if(numberOfColors < minLength || maxLength < numberOfColors) {
        NSException *ex =  [[NSException alloc] initWithName:@"Wrong numberOfColors"
                                                      reason:@"NumberOfColors must be between 256 and 2147483647 "
                                                    userInfo:nil];
        [ex raise];
    }
    _numberOfColors = numberOfColors;
    
}

@end

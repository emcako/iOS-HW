//
//  LocalData.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 29/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "LocalData.h"
@interface LocalData()

@property NSMutableArray* _phones;

@end

@implementation LocalData

- (instancetype)init{

    self = [super init];
    if (self) {
        self._phones = [NSMutableArray array];
    }
    return self;
}

-(NSArray*) phones {
    return [NSArray arrayWithArray:self._phones];
}

-(void)addPhone:(GSM *)phone {
    [self._phones addObject: phone];
}

-(void)deletePhone:(GSM *)phone {
    NSInteger index = [self._phones indexOfObject:phone];
    [self._phones removeObjectAtIndex:index];
}

@end

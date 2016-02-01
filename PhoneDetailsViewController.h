//
//  PhoneDetailsViewController.h
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 28/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GSM.h"

@interface PhoneDetailsViewController : UIViewController

@property (strong, nonatomic) GSM* phone;
@property (weak, nonatomic) IBOutlet UILabel *manifacturerLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (weak, nonatomic) IBOutlet UILabel *ownerLabel;

@property (weak, nonatomic) IBOutlet UILabel *batteryModelLabel;
@property (weak, nonatomic) IBOutlet UILabel *batteryIsdlLabel;
@property (weak, nonatomic) IBOutlet UILabel *batteryTalkLabel;
@property (weak, nonatomic) IBOutlet UILabel *batteryTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *diagonalLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberOfColorsLabel;

@end

//
//  PhoneDetailsViewController.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 28/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "PhoneDetailsViewController.h"

@interface PhoneDetailsViewController ()

@end

@implementation PhoneDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = [NSString stringWithFormat:@"%@ %@", self.phone.manifacturer, self.phone.model];
    self.manifacturerLabel.text = self.phone.manifacturer;
    self.modelLabel.text = self.phone.model;
    self.priceLabel.text = [NSString stringWithFormat:@"%@", self.phone.price];
    self.ownerLabel.text = self.phone.owner;
    self.batteryModelLabel.text = self.phone.battery.batteryModel;
    self.batteryIsdlLabel.text = [NSString stringWithFormat:@"%@",self.phone.battery.hoursIdle];
    self.batteryTalkLabel.text = [NSString stringWithFormat:@"%@",self.phone.battery.hoursTalk];
//    self.batteryTypeLabel.text = [NSString stringWithFormat:@"%ld",self.phone.battery.type];
    
    if (self.phone.battery.type == 1) {
        self.batteryTypeLabel.text = @"LiIon";
    } else if(self.phone.battery.type == 2){
        self.batteryTypeLabel.text = @"NiMH";
    }else if(self.phone.battery.type == 3){
        self.batteryTypeLabel.text = @"NiCd";
    }

    self.diagonalLabel.text = [ NSString stringWithFormat:@"%@",self.phone.display.diagonal];
    self.numberOfColorsLabel.text =[ NSString stringWithFormat:@"%@",self.phone.display.numberOfColors];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

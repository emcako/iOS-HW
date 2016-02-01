//
//  AddPhoneViewController.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 29/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "AddPhoneViewController.h"
#import "PhoneListTableViewController.h"
#import "GSM.h"
#import "AppDelegate.h"

@interface AddPhoneViewController ()
@property (weak, nonatomic) IBOutlet UITextField *manifacturerField;
@property (weak, nonatomic) IBOutlet UITextField *modelField;
@property (weak, nonatomic) IBOutlet UITextField *priceField;
@property (weak, nonatomic) IBOutlet UITextField *ownerField;
@property (weak, nonatomic) IBOutlet UITextField *batteryModelField;
@property (weak, nonatomic) IBOutlet UITextField *batteryIdleField;
@property (weak, nonatomic) IBOutlet UITextField *batteryTalkField;
@property (weak, nonatomic) IBOutlet UITextField *batteryTypeField;
@property (weak, nonatomic) IBOutlet UITextField *displayDiagonalField;
@property (weak, nonatomic) IBOutlet UITextField *displayColorsField;
- (IBAction)tapAdd:(id)sender;

@end

@implementation AddPhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.title = @"Add Phone";
    
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


- (IBAction)tapAdd:(id)sender {
    GSM* phone;
    if (self.batteryModelField.text.length == 0 && self.displayDiagonalField.text.length == 0) {
        
    
    phone = [[GSM alloc] initWithManifacturer:self.manifacturerField.text
                                             model:self.modelField.text
                                             price:[NSNumber numberWithInt:[self.priceField.text intValue ]]
                                             owner:self.ownerField.text
                                           battery:[[Battery alloc] init]
                                           display:[[Display alloc] init]];
    
    } else if (self.batteryModelField.text.length != 0 && self.displayDiagonalField.text.length == 0){
        
        phone = [[GSM alloc] initWithManifacturer:self.manifacturerField.text
                                            model:self.modelField.text
                                            price:[NSNumber numberWithInt:[self.priceField.text intValue ]]
                                            owner:self.ownerField.text
                                        battery:[[Battery alloc] initWithBatteryModel:self.batteryModelField.text
                                                                              hoursIdle:[NSNumber numberWithInt:[self.batteryIdleField.text intValue ]]
                                                                           andHoursTalk:[NSNumber numberWithInt:[self.batteryTalkField.text intValue ]]
                                                                         andBatteryType:(BatteryType)self.batteryTypeField.text]
                                          display:[[Display alloc] init]];
        
    } else if (self.batteryModelField.text.length == 0 && self.displayDiagonalField.text.length != 0){
        
        phone = [[GSM alloc] initWithManifacturer:self.manifacturerField.text
                                            model:self.modelField.text
                                            price:[NSNumber numberWithInt:[self.priceField.text intValue ]]
                                            owner:self.ownerField.text
                                          battery:[[Battery alloc] init]
                                          display:[[Display alloc] initWithDiagonal:[NSNumber numberWithInt:[self.displayDiagonalField.text intValue ]]
                                                                  andNumberOfColors:[NSNumber numberWithInt:[self.displayColorsField.text intValue ]]]];
  
    } else {
        
        phone = [[GSM alloc] initWithManifacturer:self.manifacturerField.text
                                            model:self.modelField.text
                                            price:[NSNumber numberWithInt:[self.priceField.text intValue ]]
                                            owner:self.ownerField.text
                                          battery:[[Battery alloc] initWithBatteryModel:self.batteryModelField.text
                                                                              hoursIdle:[NSNumber numberWithInt:[self.batteryIdleField.text intValue ]]
                                                                           andHoursTalk:[NSNumber numberWithInt:[self.batteryTalkField.text intValue ]]
                                                                         andBatteryType:(BatteryType)self.batteryTypeField.text]
                                          display:[[Display alloc] initWithDiagonal:[NSNumber numberWithInt:[self.displayDiagonalField.text intValue ]]
                                                                  andNumberOfColors:[NSNumber numberWithInt:[self.displayColorsField.text intValue ]]]];

    }
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [delegate.data addPhone:phone];
    
    NSString *message = [NSString stringWithFormat:@"%@ %@ was added!", self.manifacturerField.text, self.modelField.text];
    UIAlertView *toast = [[UIAlertView alloc] initWithTitle:nil
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:nil, nil];
    [toast show];
    int duration = 3;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [toast dismissWithClickedButtonIndex:0 animated:YES];
    });

    
    [self.navigationController popViewControllerAnimated:YES];
}
@end

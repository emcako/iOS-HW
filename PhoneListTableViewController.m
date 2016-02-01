//
//  PhoneListTableViewController.m
//  HomeWork-Objective-C-OOP
//
//  Created by emcako on 28/01/2016.
//  Copyright © 2016 emcako. All rights reserved.
//

#import "PhoneListTableViewController.h"
#import "GSM.h"
#import "PhoneDetailsViewController.h"
#import "AddPhoneViewController.h"
#import "AppDelegate.h"

@interface PhoneListTableViewController ()

@end

@implementation PhoneListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Phone List";
    
    UIBarButtonItem *addBarButton =
    [[UIBarButtonItem alloc]
     initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
     target:self
     action:@selector(showAdd)];
    
    self.navigationItem.rightBarButtonItem = addBarButton;
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    self.phones = [delegate.data phones];
    [self.tableView reloadData];
}

//------------------------------------
-(void) showAdd {
    NSString *storyBoardId = @"addPhoneScene";
    
    AddPhoneViewController *addPhone = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:addPhone animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    
    static NSString* identifire = @"Ident";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:identifire];
    }
    
   GSM* phone =[self.phones objectAtIndex:indexPath.row];
    
    cell.textLabel.text = phone.manifacturer;
    
    return  cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.phones.count;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *) indexPath {
    
    GSM *phone = [self.phones objectAtIndex:indexPath.row];
    NSString *storyBoardId = @"detailsScene";
    
    PhoneDetailsViewController *details =
    [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    details.phone = phone;
    
    //         AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    //    appDelegate.window.rootViewController = detailsVC;
    [self.navigationController pushViewController:details animated:YES];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if( editingStyle == UITableViewCellEditingStyleDelete){
        
        AppDelegate* delegate = [UIApplication sharedApplication].delegate;
        
        [delegate.data deletePhone:[self.phones objectAtIndex:indexPath.row]];
        
        self.phones = [delegate.data phones];
        
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}
@end

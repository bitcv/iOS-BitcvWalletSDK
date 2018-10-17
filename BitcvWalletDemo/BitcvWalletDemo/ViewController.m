//
//  ViewController.m
//  BitcvWalletDemo
//
//  Created by 姚任金 on 2018/10/17.
//  Copyright © 2018年 姚任金. All rights reserved.
//

#import "ViewController.h"
#import <BitcvWalletSDK/BitcvWalletManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.versionLabel.text = [NSString stringWithFormat:@"版本号:%@",[BitcvWalletManager version]];
}
- (IBAction)presentBtnClick:(id)sender {
    
    if (self.mobileTextField.text == nil || [self.mobileTextField.text isEqualToString:@""]) {
        
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入手机号码" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alertView show];
        return;
    }
    
    [BitcvWalletManager initWithAppKey:@"bcv2SnqmaJ4Y4xk2"];
    [BitcvWalletManager presentViewControllerWithViewController:self nation:nil mobile:self.mobileTextField.text exitBlock:^{
        
    }];
}

- (IBAction)pushBtnClick:(id)sender {
    
    if (self.mobileTextField.text == nil || [self.mobileTextField.text isEqualToString:@""]) {
        
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入手机号码" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alertView show];
        return;
    }
    
    [BitcvWalletManager initWithAppKey:@"bcv2SnqmaJ4Y4xk2"];
    [BitcvWalletManager pushViewControllerWithNavigationController:self.navigationController nation:nil mobile:self.mobileTextField.text exitBlock:^{
        
    }];
}

- (IBAction)signOutBtnClick:(id)sender {
    
    [BitcvWalletManager signOut];
}


@end

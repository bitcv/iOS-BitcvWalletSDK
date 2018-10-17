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
    
    [BitcvWalletManager initWithAppKey:@"bcv2SnqmaJ4Y4xk2"];
    [BitcvWalletManager presentViewControllerWithViewController:self nation:nil mobile:@"xxxxxxxxxxx" exitBlock:^{
        
    }];
}

- (IBAction)pushBtnClick:(id)sender {
    
    [BitcvWalletManager initWithAppKey:@"bcv2SnqmaJ4Y4xk2"];
    [BitcvWalletManager pushViewControllerWithNavigationController:self.navigationController nation:nil mobile:@"xxxxxxxxxxx" exitBlock:^{
        
    }];
}

- (IBAction)signOutBtnClick:(id)sender {
    
    [BitcvWalletManager signOut];
}


@end

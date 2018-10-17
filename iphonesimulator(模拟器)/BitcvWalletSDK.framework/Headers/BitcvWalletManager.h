//
//  BitcvWalletManager.h
//  BitcvWalletSDK
//
//  Created by 姚任金 on 2018/10/9.
//  Copyright © 2018年 姚任金. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^BCVExitBlock)(void);

@interface BitcvWalletManager : NSObject
/**
 *  初始化SDK
 *  appKey 第三方的唯一标识
 */
+(void)initWithAppKey:(NSString*)appKey;
/**
 *  进入币威钱包页面
 *  navigationController 向导航控制器push视图控制器 (必填)
 *  nation:国家码 例如:中国(+86)
 *  mobile:手机号码
 *  exitBlock:当要退出币威钱包的时候，会有回调。根据业务情况来做相应处理。
 *  注意：当有UITabBarController的时候，pushViewController会把tabbar隐藏掉
 */
+(void)pushViewControllerWithNavigationController:(UINavigationController*)navigationController
                                           nation:(NSString*)nation
                                           mobile:(NSString*)mobile
                                        exitBlock:(BCVExitBlock)exitBlock;
/**
 *  进入币威钱包页面
 *  模态方式弹出页面
 *  nation:国家码 例如:中国(+86)
 *  mobile:手机号码
 *  exitBlock:当要退出币威钱包的时候，会有回调。根据业务情况来做相应处理。
 */
+(void)presentViewControllerWithViewController:(UIViewController*)viewController
                                        nation:(NSString*)nation
                                        mobile:(NSString*)mobile
                                     exitBlock:(BCVExitBlock)exitBlock;
/*
 * 获取当前SDK的版本号
 */
+(NSString*)version;
/**
 * 退出登录。使用场景 当你的app退出登录或者切换账号的时候，需要调用该方法
 */
+(void)signOut;

@end


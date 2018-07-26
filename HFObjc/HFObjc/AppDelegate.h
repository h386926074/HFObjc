//
//  AppDelegate.h
//  HFObjc
//
//  Created by 黄锋 on 05/09/2017.
//  Copyright © 2017 daniel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Store.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong, nonatomic) Store *store;
+ (instancetype)sharedDelegate;
@end


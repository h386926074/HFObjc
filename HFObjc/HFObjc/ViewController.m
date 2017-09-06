//
//  ViewController.m
//  HFObjc
//
//  Created by 黄锋 on 05/09/2017.
//  Copyright © 2017 daniel. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveObjC.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *racButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self.racButton rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(__kindof UIControl * _Nullable x) {
        NSLog(@"--rac按钮被点击了---%@",x);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

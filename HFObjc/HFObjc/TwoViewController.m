//
//  TwoViewController.m
//  HFObjc
//
//  Created by 黄锋 on 06/09/2017.
//  Copyright © 2017 daniel. All rights reserved.
//

#import "TwoViewController.h"

@protocol twoDelegate <NSObject>

-(void)presentClick;

@end




@interface TwoViewController ()
- (IBAction)backClose:(id)sender;

- (IBAction)delegateClick:(id)sender;
@property(nonatomic,weak)id <twoDelegate> delegate;
@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)backClose:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (IBAction)delegateClick:(id)sender {
    [self.delegate presentClick];
}
@end

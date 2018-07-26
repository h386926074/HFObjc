//
//  MainControllerTableViewController.m
//  HFObjc
//
//  Created by huangfeng on 2018/7/26.
//  Copyright © 2018年 daniel. All rights reserved.
//

#import "MainControllerTableViewController.h"

@interface MainControllerTableViewController ()

@end

@implementation MainControllerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    [self.navigationItem setTitle:@"Objc_learn_Main"];
    [self.tableView setRowHeight: UITableViewAutomaticDimension];
    [self.tableView setEstimatedRowHeight:50];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"MAINTABLECELL"];
    [self.tableView setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    switch (indexPath.row) {
        case 0:
        {
            NSString *ID = @"MAINTABLECELL1";
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
            cell.backgroundColor = [UIColor yellowColor];
            cell.detailTextLabel.text = @"Rac button";
            cell.textLabel.text = @"rac 简单使用";
        }
            break;
        case 1:
        {
            NSString *CELL2 = @"MAINTABLECELL2";
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CELL2];
            cell.backgroundColor = [UIColor redColor];
            cell.detailTextLabel.text = @"更轻量级的ViewController";
            cell.textLabel.text = @"textLabel";
        }
            break;
        case 2:
        {
            NSString *CELL2 = @"MAINTABLECELL3";
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CELL2];
            cell.backgroundColor = [UIColor blueColor];
            cell.detailTextLabel.text = @"detailTextLabel";
            cell.textLabel.text = @"textLabel";
        }
            break;
        case 3:
        {
            NSString *CELL4 = @"MAINTABLECELL4";
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CELL4];
            cell.backgroundColor = [UIColor purpleColor];
            cell.detailTextLabel.text = @"detailTextLabel";
            cell.textLabel.text = @"textLabel";
        }
            break;
    }
//    cell.imageView.image = [UIImage imageNamed:@"warning_btn"];

    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
        {
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
            ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
            [self.navigationController pushViewController:vc animated:YES];
        }
        break;
            
        case 1:
        {
            
            LightWeightController *vc = [[LightWeightController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

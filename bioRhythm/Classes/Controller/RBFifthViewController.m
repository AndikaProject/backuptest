//
//  RBFifthViewController.m
//  Brightr
//
//  Created by Tjaraka Asset on 8/28/14.
//  Copyright (c) 2014 Tjaraka Asset. All rights reserved.
//

#import "RBFifthViewController.h"

#import "RBSettingsCustomCell.h"

@interface RBFifthViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tabelViewSetting;

@end

@implementation RBFifthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.tabelViewSetting registerNib:[UINib nibWithNibName:@"RBSettingsCustomCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier: @"RBSettingsCustomCell"];
}

- (void)viewDidAppear:(BOOL)animated{
    [_scrollerView setContentSize:CGSizeMake(320, 528)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }
    else if (section == 1) {
        return 2;
    }
    else if (section == 2) {
        return 1;
    }
    else if (section == 3) {
        return 6;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        static NSString *CellIdentifier = @"RBFirstSettingsCell";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        
        cell.textLabel.text = @"ACCOUNT";

        return cell;
        
    }
    else if (indexPath.section == 1) {
    
       RBSettingsCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RBSettingsCustomCell"];
    
       switch (indexPath.row) {
           case 0:
               cell.labelSettings.text = @"Profile";
               [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
               break;
           case 1:
               cell.labelSettings.text = @"Log out";
               [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
               break;
               
           default:
              break;
       }
       return cell;
   }
    else  if (indexPath.section == 2) {
        static NSString *CellIdentifier = @"RBSecondSettingsCell";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        
        cell.textLabel.text = @"VITALITY APP";
        
        return cell;
        
    }
    else if (indexPath.section == 3) {
        
        RBSettingsCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RBSettingsCustomCell"];
        
        switch (indexPath.row) {
            case 0:
                cell.labelSettings.text = @"ASML about Vitality app";
                [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
                break;
            case 1:
                cell.labelSettings.text = @"Support";
                [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
                break;
            case 2:
                cell.labelSettings.text = @"Feedback";
                [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
                break;
            case 3:
                cell.labelSettings.text = @"FAQ";
                [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
                break;
            case 4:
                cell.labelSettings.text = @"Terms and Conditions";
                [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
                break;
            case 5:
                cell.labelSettings.text = @"Privacy Policy";
                [cell.imageViewSettings setImage:[UIImage imageNamed:@"_arrow_right.png"]];
                break;
                
            default:
                break;
        }
        return cell;
    }
    return nil;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

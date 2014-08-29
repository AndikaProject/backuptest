//
//  RBHomeTabBarController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBHomeTabBarController.h"

#import "RBLoginViewController.h"
#import "RBFirstNavigatonViewController.h"

@interface RBHomeTabBarController ()

@property (nonatomic, assign) BOOL firstLaunch;

@end

@implementation RBHomeTabBarController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _firstLaunch = YES;
    
    self.selectedIndex = 1;

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if (_firstLaunch) {
        _firstLaunch = NO;
        RBFirstNavigatonViewController *controller = [RBFirstNavigatonViewController controllerWithStoryBoard:self.storyboard];
        [self presentViewController:controller animated:YES completion:nil];
    }

}

- (void)viewWillAppear:(BOOL)animated {
    switch (self.tabBarController.selectedIndex) {
        case 0:
            self.tabBarController.tabBar.barTintColor = [UIColor blackColor];
            break;
        
        case 1:
            self.tabBarController.tabBar.barTintColor = [UIColor whiteColor];
            break;
        
        case 2:
            self.tabBarController.tabBar.barTintColor = [UIColor greenColor];
            break;
            
        case 3:
            self.tabBarController.tabBar.barTintColor = [UIColor blueColor];
            break;
            
        case 4:
            self.tabBarController.tabBar.barTintColor = [UIColor redColor];
            break;
        
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

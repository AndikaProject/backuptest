//
//  RBFirstViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBFirstViewController.h"

#import "RBCalibrationViewController.h"

#import "UIViewController+ECSlidingViewController.h"

@interface RBFirstViewController ()

@property (strong, nonatomic) IBOutlet UILabel *labelSleepIcon;
@property (strong, nonatomic) IBOutlet UILabel *labelSleepPlan;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityIcon;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityPlan;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalIcon;
@property (strong, nonatomic) IBOutlet UILabel *labelMental;
@property (strong, nonatomic) IBOutlet UILabel *labelBioIcon;
@property (strong, nonatomic) IBOutlet UILabel *labelBioPlan;

@end

@implementation RBFirstViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBFirstViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBFirstViewController"];
    
    return controller;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    // set label icon color
//    self.labelSleepIcon.backgroundColor = [UIColor colorWithRed:(47/255.0) green:(50/255.0) blue:(191/255.0) alpha:1];
//    self.labelActivityIcon.backgroundColor = [UIColor colorWithRed:(191/255.0) green:(188/255.0) blue:(47/255.0) alpha:1];
//    self.labelMentalIcon.backgroundColor = [UIColor colorWithRed:(97/255.0) green:(65/255.0) blue:(38/255.0) alpha:1];
//    self.labelBioIcon.backgroundColor = [UIColor colorWithRed:(255/255.0) green:(0/255.0) blue:(0/255.0) alpha:1];
//    
//    // set label text color
//    self.labelSleepPlan.textColor = [UIColor colorWithRed:(47/255.0) green:(50/255.0) blue:(191/255.0) alpha:1];
//    self.labelActivityPlan.textColor = [UIColor colorWithRed:(191/255.0) green:(188/255.0) blue:(47/255.0) alpha:1];
//    self.labelMental.textColor = [UIColor colorWithRed:(97/255.0) green:(65/255.0) blue:(38/255.0) alpha:1];
//    self.labelBioPlan.textColor = [UIColor colorWithRed:(255/255.0) green:(0/255.0) blue:(0/255.0) alpha:1];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    self.tabBarController.tabBar.barTintColor =  [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:10.0f],NSForegroundColorAttributeName : [UIColor whiteColor]} forState:UIControlStateNormal];
    
    [self.navigationController setNavigationBarHidden:NO];    // it shows nav bar

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.slidingViewController.topViewController.view addGestureRecognizer:self.slidingViewController.panGesture];
    self.slidingViewController.topViewAnchoredGesture = ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGesturePanning;
    
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES];   //it hides
//}

//-(void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    [self.navigationController setNavigationBarHidden:NO];    // it shows
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action

- (IBAction)buttonMenuPressed:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
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

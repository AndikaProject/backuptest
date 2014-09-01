//
//  RBFourthViewController.m
//  Brightr
//
//  Created by Tjaraka Asset on 8/29/14.
//  Copyright (c) 2014 Tjaraka Asset. All rights reserved.
//

#import "RBFourthViewController.h"

@interface RBFourthViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageViewSleep;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMind;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewNutrition;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewArrow1;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewArrow2;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewArrow3;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewArrow4;

@end

@implementation RBFourthViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBFourthViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBFourthViewController"];
    
    return controller;
}

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
    
    self.navigationItem.hidesBackButton = YES;
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    [_imageViewSleep setImage:[UIImage imageNamed:@"_sleep_blue.png"]];
    [_imageViewActivity setImage:[UIImage imageNamed:@"_activity_orange.png"]];
    [_imageViewMind setImage:[UIImage imageNamed:@"_mind_green.png"]];
    [_imageViewNutrition setImage:[UIImage imageNamed:@"_nutrition_yellow.png"]];
    
    [_imageViewArrow1 setImage:[UIImage imageNamed:@"_arrow_right"]];
    [_imageViewArrow2 setImage:[UIImage imageNamed:@"_arrow_right"]];
    [_imageViewArrow3 setImage:[UIImage imageNamed:@"_arrow_right"]];
    [_imageViewArrow4 setImage:[UIImage imageNamed:@"_arrow_right"]];
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES];   //it hides
//}

//-(void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    [self.navigationController setNavigationBarHidden:NO]; // it shows
//}

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

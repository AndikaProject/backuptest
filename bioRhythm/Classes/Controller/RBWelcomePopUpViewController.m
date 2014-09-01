//
//  RBWelcomePopUpViewController.m
//  Brightr
//
//  Created by defindal irvan on 9/1/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBWelcomePopUpViewController.h"

#import "RBSecondViewController.h"

@interface RBWelcomePopUpViewController ()

@property (strong, nonatomic) IBOutlet UINavigationBar *navBar;
@property (strong, nonatomic) IBOutlet UIButton *buttonGotIt;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonClose;

- (IBAction)buttonGotItPressed:(id)sender;
- (IBAction)buttonClosePressed:(id)sender;

@end

@implementation RBWelcomePopUpViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBWelcomePopUpViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBWelcomePopUpViewController"];
    
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
    
    [_navBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    _navBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    
    // set round corner button
    _buttonGotIt.layer.cornerRadius = 5;
    
    // set border width
    _buttonGotIt.layer.borderWidth = 0.5f;
    
    // set border color
    _buttonGotIt.layer.borderColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1].CGColor;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES]; //it hides
    [self.tabBarController.tabBar setHidden:YES];
}

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
- (IBAction)buttonGotItPressed:(id)sender {
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.type = kCATransitionReveal;
    transition.subtype = kCATransitionFromBottom;
    [self.navigationController.view.layer addAnimation:transition
                                                forKey:kCATransition];
    
    RBSecondViewController *controller = [RBSecondViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
    
}

- (IBAction)buttonClosePressed:(id)sender {
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.type = kCATransitionReveal;
    transition.subtype = kCATransitionFromBottom;
    [self.navigationController.view.layer addAnimation:transition
                                                forKey:kCATransition];
    
    RBSecondViewController *controller = [RBSecondViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
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

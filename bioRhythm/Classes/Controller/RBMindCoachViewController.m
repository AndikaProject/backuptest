//
//  RBMindCoachViewController.m
//  Brightr
//
//  Created by defindal irvan on 9/1/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBMindCoachViewController.h"

@interface RBMindCoachViewController ()

@property (strong, nonatomic) IBOutlet UINavigationBar *navBar;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewMind;
@property (strong, nonatomic) IBOutlet UITextField *textFieldMind;
@property (strong, nonatomic) IBOutlet UIButton *buttonSend;

- (IBAction)buttonSendPressed:(id)sender;
- (IBAction)dismissKeypad:(id)sender;
- (IBAction)textFieldReturn:(id)sender;

@end

@implementation RBMindCoachViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBMindCoachViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBMindCoachViewController"];
    
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
    
    [_navBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    _navBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    [_imageViewMind setImage:[UIImage imageNamed:@"_mind_pic.png"]];
    
    // set round corner button
    _buttonSend.layer.cornerRadius = 5;
    
    _textFieldMind.layer.borderColor=[[UIColor colorWithRed:(227/255.0) green:(228/255.0) blue:(232/255.0) alpha:1]CGColor];
    _textFieldMind.layer.borderWidth=1.0;
    
    UIFont* italicFont = [UIFont italicSystemFontOfSize:[UIFont systemFontSize]];
    [_textFieldMind setValue:italicFont forKeyPath:@"_placeholderLabel.font"];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES]; //it hides
    //[self.tabBarController.tabBar setHidden:YES];
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
- (IBAction)buttonSendPressed:(id)sender {
}

- (IBAction)dismissKeypad:(id)sender {
    
    [_textFieldMind resignFirstResponder];
    
}

- (IBAction)textFieldReturn:(id)sender {
    
    [sender resignFirstResponder];
    
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

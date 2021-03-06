//
//  RBSubscriptionCodeViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBSubscriptionCodeViewController.h"

#import "RBCreateAccountViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface RBSubscriptionCodeViewController ()
@property (strong, nonatomic) IBOutlet UIButton *buttonSubscriptionContinue;
@property (strong, nonatomic) IBOutlet UIButton *buttonLostYourCode;
@property (strong, nonatomic) IBOutlet UILabel *labelInvalidCode;
@property (strong, nonatomic) IBOutlet UITextField *textFieldSubscription;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewIcon;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewLogo;

- (IBAction)textFieldClicked:(id)sender;

@end

@implementation RBSubscriptionCodeViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBSubscriptionCodeViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBSubscriptionCodeViewController"];
    
    return controller;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // set round corner button
    _buttonSubscriptionContinue.layer.cornerRadius = 5;
    
    // set image view
    [_imageView setImage:[UIImage imageNamed:@"textField.png"]];
    [_imageViewLogo setImage:[UIImage imageNamed:@"ASML_logo.png"]];
    [_imageViewIcon setImage:[UIImage imageNamed:@"_password.png"]];
    
    // set border image
    _imageView.layer.borderWidth = 1.0;
    _imageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _imageView.layer.cornerRadius = 5.0;

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];   //it hides
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

- (IBAction)buttonContinuePressed:(id)sender {
    NSString *subscription = _textFieldSubscription.text;
    
    if (![subscription  isEqual: @"ASML1234"])
    {
        _labelInvalidCode.text = @"Invalid code";
        _imageView.layer.borderWidth = 1.0;
        _imageView.layer.borderColor = [UIColor redColor].CGColor;
        _imageView.layer.cornerRadius = 5.0;
    }
    else if ([subscription isEqual:@"ASML1234"])
    {
        RBCreateAccountViewController *controller = [RBCreateAccountViewController controllerWithStoryBoard:self.storyboard];
        [self.navigationController pushViewController:controller animated:YES];
    }
}

- (IBAction)buttonWebsitePressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.getbrightr.com/"]];
}

- (IBAction)textFieldClicked:(id)sender {
    [_imageViewIcon setImage:[UIImage imageNamed:@"_password_selected.png"]];
    _imageView.layer.borderWidth = 1.0;
    _imageView.layer.borderColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1].CGColor;
    _imageView.layer.cornerRadius = 5.0;
    
}

- (IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)dismissKeypad:(id)sender
{
    [_textFieldSubscription resignFirstResponder];
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

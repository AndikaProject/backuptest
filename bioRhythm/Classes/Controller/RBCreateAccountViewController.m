//
//  RBCreateAccountViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/20/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBCreateAccountViewController.h"

#import "RBFirstCalIntroViewController.h"
#import "RBTermsAndConditionViewController.h"
#import "RBPrivacyPolicyViewController.h"

@interface RBCreateAccountViewController ()

@property (strong, nonatomic) IBOutlet UIButton *buttonCreateAccount;
@property (strong, nonatomic) IBOutlet UIButton *buttonTermsAndCondition;
@property (strong, nonatomic) IBOutlet UILabel *labelPasswordDoNotMatch;
@property (strong, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (strong, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (strong, nonatomic) IBOutlet UITextField *textFieldRepeatPassword;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewEmail;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewPassword;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewRepeatPass;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewEmailField;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewPasswordField;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewRpasswordField;
@property (strong, nonatomic) IBOutlet UIButton *buttonPrivacyAndPolicy;

- (IBAction)buttonTACPressed:(id)sender;
- (IBAction)buttonPPPressed:(id)sender;
- (IBAction)textFieldEmailClicked:(id)sender;
- (IBAction)textFieldPasswordClicked:(id)sender;
- (IBAction)textFieldRpassClicked:(id)sender;


@end

@implementation RBCreateAccountViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBCreateAccountViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBCreateAccountViewController"];
    
    return controller;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // set round corner button
    _buttonCreateAccount.layer.cornerRadius = 5;
    
    // set image view
    [_imageViewEmail setImage:[UIImage imageNamed:@"textField.png"]];
    [_imageViewPassword setImage:[UIImage imageNamed:@"textField.png"]];
    [_imageViewRepeatPass setImage:[UIImage imageNamed:@"textField.png"]];
    [_imageViewEmailField setImage:[UIImage imageNamed:@"_username_.png"]];
    [_imageViewPasswordField setImage:[UIImage imageNamed:@"_password.png"]];
    [_imageViewRpasswordField setImage:[UIImage imageNamed:@"_password.png"]];
    
    // set border image
    _imageViewEmail.layer.borderWidth = 1.0;
    _imageViewEmail.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _imageViewEmail.layer.cornerRadius = 5.0;
    
    _imageViewPassword.layer.borderWidth = 1.0;
    _imageViewPassword.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _imageViewPassword.layer.cornerRadius = 5.0;

    
    _imageViewRepeatPass.layer.borderWidth = 1.0;
    _imageViewRepeatPass.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _imageViewRepeatPass.layer.cornerRadius = 5.0;
    
    UIFont* italicFont = [UIFont italicSystemFontOfSize:[UIFont systemFontSize]];
    [_textFieldEmail setValue:italicFont forKeyPath:@"_placeholderLabel.font"];
    [_textFieldPassword setValue:italicFont forKeyPath:@"_placeholderLabel.font"];
    [_textFieldRepeatPassword setValue:italicFont forKeyPath:@"_placeholderLabel.font"];

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

-(BOOL) isValidEmail:(NSString *)checkString
{
    checkString = [checkString lowercaseString];
    BOOL stricterFilter = YES;
    NSString *stricterFilterString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSString *laxString = @".+@.+\\.[A-Za-z]{2}[A-Za-z]*";
    
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:checkString];
}

#pragma mark - action

- (IBAction)buttonCreateAccountPressed:(id)sender {
    
    NSString *password = _textFieldPassword.text;
    NSString *rpassword = _textFieldRepeatPassword.text;
    NSString *email = _textFieldEmail.text;
    
    if ((email.length == 0 && password.length == 0 && rpassword.length == 0) || (email.length != 0 && password.length == 0 && rpassword.length == 0) || (email.length != 0 && password.length != 0 && rpassword.length == 0))
    {
        _labelPasswordDoNotMatch.text = @"Please fill all the text field";
    }
    else if(![self isValidEmail:_textFieldEmail.text])
    {
        _labelPasswordDoNotMatch.text = @"Email is invalid";
    }
    else if (![password isEqualToString:rpassword])
    {
        _labelPasswordDoNotMatch.text = @"Password do not match";
    }
    else if (([password isEqualToString:rpassword]) && (email.length != 0 && password.length != 0 && rpassword.length != 0))
    {
        RBFirstCalIntroViewController *controller = [RBFirstCalIntroViewController controllerWithStoryBoard:self.storyboard];
        [self.navigationController pushViewController:controller animated:YES];
    }
}

- (IBAction)buttonTACPressed:(id)sender {
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition
                                                forKey:kCATransition];
    
    RBTermsAndConditionViewController *controller = [RBTermsAndConditionViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)buttonPPPressed:(id)sender {
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition
                                                forKey:kCATransition];
    
    RBPrivacyPolicyViewController *controller = [RBPrivacyPolicyViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)textFieldEmailClicked:(id)sender {
    [_imageViewEmailField setImage:[UIImage imageNamed:@"_username_selected.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer = [CALayer layer];
    CGRect borderFrame = CGRectMake(0, 0, (_imageViewEmail.frame.size.width), (_imageViewEmail.frame.size.height));
    [borderLayer setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer setFrame:borderFrame];
    [borderLayer setCornerRadius:kCornerRadius];
    [borderLayer setBorderWidth:kBorderWidth];
    [borderLayer setBorderColor:[[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1] CGColor]];
    [_imageViewEmail.layer addSublayer:borderLayer];
    
    [_imageViewPasswordField setImage:[UIImage imageNamed:@"_password.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer2 = [CALayer layer];
    CGRect borderFrame2 = CGRectMake(0, 0, (_imageViewPassword.frame.size.width), (_imageViewPassword.frame.size.height));
    [borderLayer2 setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer2 setFrame:borderFrame2];
    [borderLayer2 setCornerRadius:kCornerRadius];
    [borderLayer2 setBorderWidth:kBorderWidth];
    [borderLayer2 setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [_imageViewPassword.layer addSublayer:borderLayer2];
    
    [_imageViewRpasswordField setImage:[UIImage imageNamed:@"_password.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer3 = [CALayer layer];
    CGRect borderFrame3 = CGRectMake(0, 0, (_imageViewRepeatPass.frame.size.width), (_imageViewRepeatPass.frame.size.height));
    [borderLayer3 setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer3 setFrame:borderFrame3];
    [borderLayer3 setCornerRadius:kCornerRadius];
    [borderLayer3 setBorderWidth:kBorderWidth];
    [borderLayer3 setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [_imageViewRepeatPass.layer addSublayer:borderLayer3];
}

- (IBAction)textFieldPasswordClicked:(id)sender {
    [_imageViewEmailField setImage:[UIImage imageNamed:@"_username.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer = [CALayer layer];
    CGRect borderFrame = CGRectMake(0, 0, (_imageViewEmail.frame.size.width), (_imageViewEmail.frame.size.height));
    [borderLayer setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer setFrame:borderFrame];
    [borderLayer setCornerRadius:kCornerRadius];
    [borderLayer setBorderWidth:kBorderWidth];
    [borderLayer setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [_imageViewEmail.layer addSublayer:borderLayer];
    
    [_imageViewPasswordField setImage:[UIImage imageNamed:@"_password_selected.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer2 = [CALayer layer];
    CGRect borderFrame2 = CGRectMake(0, 0, (_imageViewPassword.frame.size.width), (_imageViewPassword.frame.size.height));
    [borderLayer2 setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer2 setFrame:borderFrame2];
    [borderLayer2 setCornerRadius:kCornerRadius];
    [borderLayer2 setBorderWidth:kBorderWidth];
    [borderLayer2 setBorderColor:[[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1] CGColor]];
    [_imageViewPassword.layer addSublayer:borderLayer2];
    
    [_imageViewRpasswordField setImage:[UIImage imageNamed:@"_password.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer3 = [CALayer layer];
    CGRect borderFrame3 = CGRectMake(0, 0, (_imageViewRepeatPass.frame.size.width), (_imageViewRepeatPass.frame.size.height));
    [borderLayer3 setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer3 setFrame:borderFrame3];
    [borderLayer3 setCornerRadius:kCornerRadius];
    [borderLayer3 setBorderWidth:kBorderWidth];
    [borderLayer3 setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [_imageViewRepeatPass.layer addSublayer:borderLayer3];
}

- (IBAction)textFieldRpassClicked:(id)sender {
    [_imageViewEmailField setImage:[UIImage imageNamed:@"_username.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer = [CALayer layer];
    CGRect borderFrame = CGRectMake(0, 0, (_imageViewEmail.frame.size.width), (_imageViewEmail.frame.size.height));
    [borderLayer setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer setFrame:borderFrame];
    [borderLayer setCornerRadius:kCornerRadius];
    [borderLayer setBorderWidth:kBorderWidth];
    [borderLayer setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [_imageViewEmail.layer addSublayer:borderLayer];
    
    [_imageViewPasswordField setImage:[UIImage imageNamed:@"_password.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer2 = [CALayer layer];
    CGRect borderFrame2 = CGRectMake(0, 0, (_imageViewPassword.frame.size.width), (_imageViewPassword.frame.size.height));
    [borderLayer2 setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer2 setFrame:borderFrame2];
    [borderLayer2 setCornerRadius:kCornerRadius];
    [borderLayer2 setBorderWidth:kBorderWidth];
    [borderLayer2 setBorderColor:[[UIColor lightGrayColor] CGColor]];
    [_imageViewPassword.layer addSublayer:borderLayer2];
    
    [_imageViewRpasswordField setImage:[UIImage imageNamed:@"_password_selected.png"]];
    
    // set border image
    #define kBorderWidth 1.0
    #define kCornerRadius 5.0
    CALayer *borderLayer3 = [CALayer layer];
    CGRect borderFrame3 = CGRectMake(0, 0, (_imageViewRepeatPass.frame.size.width), (_imageViewRepeatPass.frame.size.height));
    [borderLayer3 setBackgroundColor:[[UIColor clearColor] CGColor]];
    [borderLayer3 setFrame:borderFrame3];
    [borderLayer3 setCornerRadius:kCornerRadius];
    [borderLayer3 setBorderWidth:kBorderWidth];
    [borderLayer3 setBorderColor:[[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1] CGColor]];
    [_imageViewRepeatPass.layer addSublayer:borderLayer3];
}

- (IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)dismissKeypad:(id)sender
{
    [_textFieldEmail resignFirstResponder];
    [_textFieldPassword resignFirstResponder];
    [_textFieldRepeatPassword resignFirstResponder];
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

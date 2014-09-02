//
//  RBSecondViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 7/25/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBSecondViewController.h"

#import "RBCalibrationViewController.h"
#import "RBTimeToBedViewController.h"
#import "RBTakeaBreakViewController.h"
#import "RBWelcomePopUpViewController.h"
#import "RBStretchViewController.h"

#import "UIViewController+ECSlidingViewController.h"

@interface RBSecondViewController ()

@property (strong, nonatomic) IBOutlet UILabel *labelFirstDescription;
@property (strong, nonatomic) IBOutlet UILabel *labelFirstTime;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondDescription;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondTime;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdDescription;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdTime;
@property (strong, nonatomic) IBOutlet UILabel *labelFourDescription;
@property (strong, nonatomic) IBOutlet UILabel *labelFourTime;

// calendar
@property (strong, nonatomic) IBOutlet UILabel *labelFirstDay;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondDay;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdDay;
@property (strong, nonatomic) IBOutlet UILabel *labelFourthDay;
@property (strong, nonatomic) IBOutlet UILabel *labelFifthDay;
@property (strong, nonatomic) IBOutlet UILabel *labelSixthDay;
@property (strong, nonatomic) IBOutlet UILabel *labelSeventhDay;

@property (strong, nonatomic) IBOutlet UILabel *labelFirstNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelFourthNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelFifthNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelSixthNumber;
@property (strong, nonatomic) IBOutlet UILabel *labelSeventhNumber;

@property (strong, nonatomic) IBOutlet UIButton *buttonFirst;
@property (strong, nonatomic) IBOutlet UIButton *buttonSecond;
@property (strong, nonatomic) IBOutlet UIButton *buttonThird;
@property (strong, nonatomic) IBOutlet UIButton *buttonFourth;
@property (strong, nonatomic) IBOutlet UIButton *buttonFifth;
@property (strong, nonatomic) IBOutlet UIButton *buttonSixth;
@property (strong, nonatomic) IBOutlet UIButton *buttonSeventh;

// border below the calendar
@property (strong, nonatomic) IBOutlet UILabel *labelFirstBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelFourthBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelFifthBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelSixthBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelSeventhBorder;

- (IBAction)buttonTimeToBedPopUpPressed:(id)sender;
- (IBAction)buttonTakeaBreakPopUpPressed:(id)sender;
- (IBAction)buttonStretchPopUpPressed:(id)sender;
- (IBAction)buttonWelcomePopUpPressed:(id)sender;

- (IBAction)buttonFirstPressed:(id)sender;
- (IBAction)buttonSecondPressed:(id)sender;
- (IBAction)buttonThirdressed:(id)sender;
- (IBAction)buttonFourthPressed:(id)sender;
- (IBAction)buttonFifthressed:(id)sender;
- (IBAction)buttonSixthPressed:(id)sender;
- (IBAction)buttonSeventhPressed:(id)sender;

@end

@implementation RBSecondViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBSecondViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBSecondViewController"];
    
    return controller;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.hidesBackButton = YES;
    
    [self.tabBarController.tabBar setHidden:NO];
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    [self.navigationController setNavigationBarHidden:NO]; // it shows nav bar
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    
    // set text to label description
    self.labelFirstDescription.text = @"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit.";
    self.labelSecondDescription.text = @"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit.";
    self.labelThirdDescription.text = @"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit.";
    self.labelFourDescription.text = @"Mauris ipsum lectus, placerat id diam non, laoreet egestas tortor. Cras at ullamcorper turpis, sodales scelerisque libero. Quisque suscipit leo eu felis volutpat, sed aliquam nulla hendrerit.";
    
    // set text to label time
    self.labelFirstTime.text = @"22:20";
    self.labelSecondTime.text = @"12:30";
    self.labelThirdTime.text = @"08:00";
    self.labelFourTime.text = @"Yesterday";
    
    [self loadToday];
}

//- (void)viewDidAppear:(BOOL)animated{
//    // set progress view
//    _labelFirstDay.text = @"Today";
//    
//    UIFont *boldFont = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
//    [_labelFirstDay setFont:boldFont];
//    
//    UIFont *boldFontNumber = [UIFont boldSystemFontOfSize:22];
//    [_labelFirstNumber setFont:boldFontNumber];
//    
//    _buttonFirst.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
//    
//    self.progressViewCoach.progress=0.14f;
//}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES];   //it hides
//}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO]; // it shows
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadToday
{
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Today";
    
    UIFont *boldFont = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont boldSystemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];

}

#pragma mark - action

- (IBAction)buttonTimeToBedPopUpPressed:(id)sender {
    CATransition* transition1 = [CATransition animation];
    transition1.duration = 0.3f;
    transition1.type = kCATransitionMoveIn;
    transition1.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition1
                                                forKey:kCATransition];
    
    RBTimeToBedViewController *controller = [RBTimeToBedViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)buttonTakeaBreakPopUpPressed:(id)sender {
    CATransition* transition2 = [CATransition animation];
    transition2.duration = 0.3f;
    transition2.type = kCATransitionMoveIn;
    transition2.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition2
                                                forKey:kCATransition];
    
    RBTakeaBreakViewController *controller = [RBTakeaBreakViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)buttonStretchPopUpPressed:(id)sender {
    CATransition* transition3 = [CATransition animation];
    transition3.duration = 0.3f;
    transition3.type = kCATransitionMoveIn;
    transition3.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition3
                                                forKey:kCATransition];
    
    RBStretchViewController *controller = [RBStretchViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)buttonWelcomePopUpPressed:(id)sender {
    CATransition* transition4 = [CATransition animation];
    transition4.duration = 0.3f;
    transition4.type = kCATransitionMoveIn;
    transition4.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition4
                                                forKey:kCATransition];
    
    RBWelcomePopUpViewController *controller = [RBWelcomePopUpViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)buttonFirstPressed:(id)sender {
    
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Today";
    
    UIFont *boldFont = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont boldSystemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
    
    _labelSecondDay.text = @"Tu";
    
    UIFont *boldFont2 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSecondDay setFont:boldFont2];
    
    UIFont *boldFontNumber2 = [UIFont systemFontOfSize:22];
    [_labelSecondNumber setFont:boldFontNumber2];
    
    _buttonSecond.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelThirdDay.text = @"We";
    
    UIFont *boldFont3 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelThirdDay setFont:boldFont3];
    
    UIFont *boldFontNumber3 = [UIFont systemFontOfSize:22];
    [_labelThirdNumber setFont:boldFontNumber3];
    
    _buttonThird.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFourthDay.text = @"Th";
    
    UIFont *boldFont4 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFourthDay setFont:boldFont4];
    
    UIFont *boldFontNumber4 = [UIFont systemFontOfSize:22];
    [_labelFourthNumber setFont:boldFontNumber4];
    
    _buttonFourth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFifthDay.text = @"Fr";
    
    UIFont *boldFont5 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFifthDay setFont:boldFont5];
    
    UIFont *boldFontNumber5 = [UIFont systemFontOfSize:22];
    [_labelFifthNumber setFont:boldFontNumber5];
    
    _buttonFifth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSixthDay.text = @"Sa";
    
    UIFont *boldFont6 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSixthDay setFont:boldFont6];
    
    UIFont *boldFontNumber6 = [UIFont systemFontOfSize:22];
    [_labelSixthNumber setFont:boldFontNumber6];
    
    _buttonSixth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSeventhDay.text = @"Su";
    
    UIFont *boldFont7 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSeventhDay setFont:boldFont7];
    
    UIFont *boldFontNumber7 = [UIFont systemFontOfSize:22];
    [_labelSeventhNumber setFont:boldFontNumber7];
    
    _buttonSeventh.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
}

- (IBAction)buttonSecondPressed:(id)sender {
    
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Mo";
    
    UIFont *boldFont = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont systemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];

    
    _labelSecondDay.text = @"Today";
    
    UIFont *boldFont2 = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelSecondDay setFont:boldFont2];
    
    UIFont *boldFontNumber2 = [UIFont boldSystemFontOfSize:22];
    [_labelSecondNumber setFont:boldFontNumber2];
    
    _buttonSecond.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
    
    _labelThirdDay.text = @"We";
    
    UIFont *boldFont3 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelThirdDay setFont:boldFont3];
    
    UIFont *boldFontNumber3 = [UIFont systemFontOfSize:22];
    [_labelThirdNumber setFont:boldFontNumber3];
    
    _buttonThird.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFourthDay.text = @"Th";
    
    UIFont *boldFont4 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFourthDay setFont:boldFont4];
    
    UIFont *boldFontNumber4 = [UIFont systemFontOfSize:22];
    [_labelFourthNumber setFont:boldFontNumber4];
    
    _buttonFourth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFifthDay.text = @"Fr";
    
    UIFont *boldFont5 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFifthDay setFont:boldFont5];
    
    UIFont *boldFontNumber5 = [UIFont systemFontOfSize:22];
    [_labelFifthNumber setFont:boldFontNumber5];
    
    _buttonFifth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSixthDay.text = @"Sa";
    
    UIFont *boldFont6 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSixthDay setFont:boldFont6];
    
    UIFont *boldFontNumber6 = [UIFont systemFontOfSize:22];
    [_labelSixthNumber setFont:boldFontNumber6];
    
    _buttonSixth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSeventhDay.text = @"Su";
    
    UIFont *boldFont7 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSeventhDay setFont:boldFont7];
    
    UIFont *boldFontNumber7 = [UIFont systemFontOfSize:22];
    [_labelSeventhNumber setFont:boldFontNumber7];
    
    _buttonSeventh.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
}

- (IBAction)buttonThirdressed:(id)sender {
    
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Mo";
    
    UIFont *boldFont = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont systemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    

    _labelSecondDay.text = @"Tu";
    
    UIFont *boldFont2 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSecondDay setFont:boldFont2];
    
    UIFont *boldFontNumber2 = [UIFont systemFontOfSize:22];
    [_labelSecondNumber setFont:boldFontNumber2];
    
    _buttonSecond.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelThirdDay.text = @"Today";
    
    UIFont *boldFont3 = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelThirdDay setFont:boldFont3];
    
    UIFont *boldFontNumber3 = [UIFont boldSystemFontOfSize:22];
    [_labelThirdNumber setFont:boldFontNumber3];
    
    _buttonThird.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
    
    _labelFourthDay.text = @"Th";
    
    UIFont *boldFont4 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFourthDay setFont:boldFont4];
    
    UIFont *boldFontNumber4 = [UIFont systemFontOfSize:22];
    [_labelFourthNumber setFont:boldFontNumber4];
    
    _buttonFourth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFifthDay.text = @"Fr";
    
    UIFont *boldFont5 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFifthDay setFont:boldFont5];
    
    UIFont *boldFontNumber5 = [UIFont systemFontOfSize:22];
    [_labelFifthNumber setFont:boldFontNumber5];
    
    _buttonFifth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSixthDay.text = @"Sa";
    
    UIFont *boldFont6 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSixthDay setFont:boldFont6];
    
    UIFont *boldFontNumber6 = [UIFont systemFontOfSize:22];
    [_labelSixthNumber setFont:boldFontNumber6];
    
    _buttonSixth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSeventhDay.text = @"Su";
    
    UIFont *boldFont7 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSeventhDay setFont:boldFont7];
    
    UIFont *boldFontNumber7 = [UIFont systemFontOfSize:22];
    [_labelSeventhNumber setFont:boldFontNumber7];
    
    _buttonSeventh.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
}

- (IBAction)buttonFourthPressed:(id)sender {
    
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Mo";
    
    UIFont *boldFont = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont systemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    

    _labelSecondDay.text = @"Tu";
    
    UIFont *boldFont2 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSecondDay setFont:boldFont2];
    
    UIFont *boldFontNumber2 = [UIFont systemFontOfSize:22];
    [_labelSecondNumber setFont:boldFontNumber2];
    
    _buttonSecond.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelThirdDay.text = @"We";
    
    UIFont *boldFont3 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelThirdDay setFont:boldFont3];
    
    UIFont *boldFontNumber3 = [UIFont systemFontOfSize:22];
    [_labelThirdNumber setFont:boldFontNumber3];
    
    _buttonThird.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFourthDay.text = @"Today";
    
    UIFont *boldFont4 = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelFourthDay setFont:boldFont4];
    
    UIFont *boldFontNumber4 = [UIFont boldSystemFontOfSize:22];
    [_labelFourthNumber setFont:boldFontNumber4];
    
    _buttonFourth.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
    
    _labelFifthDay.text = @"Fr";
    
    UIFont *boldFont5 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFifthDay setFont:boldFont5];
    
    UIFont *boldFontNumber5 = [UIFont systemFontOfSize:22];
    [_labelFifthNumber setFont:boldFontNumber5];
    
    _buttonFifth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSixthDay.text = @"Sa";
    
    UIFont *boldFont6 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSixthDay setFont:boldFont6];
    
    UIFont *boldFontNumber6 = [UIFont systemFontOfSize:22];
    [_labelSixthNumber setFont:boldFontNumber6];
    
    _buttonSixth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSeventhDay.text = @"Su";
    
    UIFont *boldFont7 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSeventhDay setFont:boldFont7];
    
    UIFont *boldFontNumber7 = [UIFont systemFontOfSize:22];
    [_labelSeventhNumber setFont:boldFontNumber7];
    
    _buttonSeventh.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
}

- (IBAction)buttonFifthressed:(id)sender {
    
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Mo";
    
    UIFont *boldFont = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont systemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    

    _labelSecondDay.text = @"Tu";
    
    UIFont *boldFont2 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSecondDay setFont:boldFont2];
    
    UIFont *boldFontNumber2 = [UIFont systemFontOfSize:22];
    [_labelSecondNumber setFont:boldFontNumber2];
    
    _buttonSecond.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelThirdDay.text = @"We";
    
    UIFont *boldFont3 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelThirdDay setFont:boldFont3];
    
    UIFont *boldFontNumber3 = [UIFont systemFontOfSize:22];
    [_labelThirdNumber setFont:boldFontNumber3];
    
    _buttonThird.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFourthDay.text = @"Th";
    
    UIFont *boldFont4 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFourthDay setFont:boldFont4];
    
    UIFont *boldFontNumber4 = [UIFont systemFontOfSize:22];
    [_labelFourthNumber setFont:boldFontNumber4];
    
    _buttonFourth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFifthDay.text = @"Today";
    
    UIFont *boldFont5 = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelFifthDay setFont:boldFont5];
    
    UIFont *boldFontNumber5 = [UIFont boldSystemFontOfSize:22];
    [_labelFifthNumber setFont:boldFontNumber5];
    
    _buttonFifth.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
    
    _labelSixthDay.text = @"Sa";
    
    UIFont *boldFont6 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSixthDay setFont:boldFont6];
    
    UIFont *boldFontNumber6 = [UIFont systemFontOfSize:22];
    [_labelSixthNumber setFont:boldFontNumber6];
    
    _buttonSixth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSeventhDay.text = @"Su";
    
    UIFont *boldFont7 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSeventhDay setFont:boldFont7];
    
    UIFont *boldFontNumber7 = [UIFont systemFontOfSize:22];
    [_labelSeventhNumber setFont:boldFontNumber7];
    
    _buttonSeventh.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
}

- (IBAction)buttonSixthPressed:(id)sender {
    
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Mo";
    
    UIFont *boldFont = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont systemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    

    _labelSecondDay.text = @"Tu";
    
    UIFont *boldFont2 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSecondDay setFont:boldFont2];
    
    UIFont *boldFontNumber2 = [UIFont systemFontOfSize:22];
    [_labelSecondNumber setFont:boldFontNumber2];
    
    _buttonSecond.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelThirdDay.text = @"We";
    
    UIFont *boldFont3 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelThirdDay setFont:boldFont3];
    
    UIFont *boldFontNumber3 = [UIFont systemFontOfSize:22];
    [_labelThirdNumber setFont:boldFontNumber3];
    
    _buttonThird.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFourthDay.text = @"Th";
    
    UIFont *boldFont4 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFourthDay setFont:boldFont4];
    
    UIFont *boldFontNumber4 = [UIFont systemFontOfSize:22];
    [_labelFourthNumber setFont:boldFontNumber4];
    
    _buttonFourth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFifthDay.text = @"Fr";
    
    UIFont *boldFont5 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFifthDay setFont:boldFont5];
    
    UIFont *boldFontNumber5 = [UIFont systemFontOfSize:22];
    [_labelFifthNumber setFont:boldFontNumber5];
    
    _buttonFifth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSixthDay.text = @"Today";
    
    UIFont *boldFont6 = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelSixthDay setFont:boldFont6];
    
    UIFont *boldFontNumber6 = [UIFont boldSystemFontOfSize:22];
    [_labelSixthNumber setFont:boldFontNumber6];
    
    _buttonSixth.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
    
    _labelSeventhDay.text = @"Su";
    
    UIFont *boldFont7 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSeventhDay setFont:boldFont7];
    
    UIFont *boldFontNumber7 = [UIFont systemFontOfSize:22];
    [_labelSeventhNumber setFont:boldFontNumber7];
    
    _buttonSeventh.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
}

- (IBAction)buttonSeventhPressed:(id)sender {
    
    // set border
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(128/255.0) green:(128/255.0) blue:(128/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    
    //
    _labelFirstDay.text = @"Mo";
    
    UIFont *boldFont = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont systemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    

    _labelSecondDay.text = @"Tu";
    
    UIFont *boldFont2 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSecondDay setFont:boldFont2];
    
    UIFont *boldFontNumber2 = [UIFont systemFontOfSize:22];
    [_labelSecondNumber setFont:boldFontNumber2];
    
    _buttonSecond.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelThirdDay.text = @"We";
    
    UIFont *boldFont3 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelThirdDay setFont:boldFont3];
    
    UIFont *boldFontNumber3 = [UIFont systemFontOfSize:22];
    [_labelThirdNumber setFont:boldFontNumber3];
    
    _buttonThird.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFourthDay.text = @"Th";
    
    UIFont *boldFont4 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFourthDay setFont:boldFont4];
    
    UIFont *boldFontNumber4 = [UIFont systemFontOfSize:22];
    [_labelFourthNumber setFont:boldFontNumber4];
    
    _buttonFourth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelFifthDay.text = @"Fr";
    
    UIFont *boldFont5 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelFifthDay setFont:boldFont5];
    
    UIFont *boldFontNumber5 = [UIFont systemFontOfSize:22];
    [_labelFifthNumber setFont:boldFontNumber5];
    
    _buttonFifth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSixthDay.text = @"Sa";
    
    UIFont *boldFont6 = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [_labelSixthDay setFont:boldFont6];
    
    UIFont *boldFontNumber6 = [UIFont systemFontOfSize:22];
    [_labelSixthNumber setFont:boldFontNumber6];
    
    _buttonSixth.backgroundColor = [UIColor colorWithRed:(240/255.0) green:(242/255.0) blue:(245/255.0) alpha:1];
    
    _labelSeventhDay.text = @"Today";
    
    UIFont *boldFont7 = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelSeventhDay setFont:boldFont7];
    
    UIFont *boldFontNumber7 = [UIFont boldSystemFontOfSize:22];
    [_labelSeventhNumber setFont:boldFontNumber7];
    
    _buttonSeventh.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];
    
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

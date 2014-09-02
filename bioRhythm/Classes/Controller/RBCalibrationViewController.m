//
//  RBCalibrationViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 8/8/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBCalibrationViewController.h"

#import "UIViewController+ECSlidingViewController.h"

#import "RBStopCalibrationViewController.h"

@interface RBCalibrationViewController ()

@property (strong, nonatomic) IBOutlet UILabel *labelSleep;
@property (strong, nonatomic) IBOutlet UILabel *labelSleepTime;

@property (strong, nonatomic) IBOutlet UILabel *labelActivity;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityTime;

@property (strong, nonatomic) IBOutlet UILabel *labelMental;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalTime;

@property (strong, nonatomic) IBOutlet UINavigationBar *navigationBar;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *barButtonStop;

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

// button
@property (strong, nonatomic) IBOutlet UIButton *buttonFirst;
@property (strong, nonatomic) IBOutlet UIButton *buttonSecond;
@property (strong, nonatomic) IBOutlet UIButton *buttonThird;
@property (strong, nonatomic) IBOutlet UIButton *buttonFourth;
@property (strong, nonatomic) IBOutlet UIButton *buttonFifth;
@property (strong, nonatomic) IBOutlet UIButton *buttonSixth;
@property (strong, nonatomic) IBOutlet UIButton *buttonSeventh;

// bar chart
@property (strong, nonatomic) IBOutlet UILabel *labelSleepBar1;
@property (strong, nonatomic) IBOutlet UILabel *labelSleepBar2;
@property (strong, nonatomic) IBOutlet UILabel *labelSleepBar3;
@property (strong, nonatomic) IBOutlet UILabel *labelSleepBar4;
@property (strong, nonatomic) IBOutlet UILabel *labelSleepBar5;
@property (strong, nonatomic) IBOutlet UILabel *labelSleepBar6;

@property (strong, nonatomic) IBOutlet UILabel *labelActivityBar1;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityBar2;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityBar3;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityBar4;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityBar5;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityBar6;
@property (strong, nonatomic) IBOutlet UILabel *labelActivityBar7;

@property (strong, nonatomic) IBOutlet UILabel *labelMentalBar1;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalBar2;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalBar3;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalBar4;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalBar5;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalBar6;
@property (strong, nonatomic) IBOutlet UILabel *labelMentalBar7;

// checkmark
@property (strong, nonatomic) IBOutlet UIImageView *imageViewFirst;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSecond;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewThird;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewFourth;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewFifth;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSixth;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSeventh;

// tooltip
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSleep1;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSleep2;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSleep3;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSleep4;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSleep5;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSleep6;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity1;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity2;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity3;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity4;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity5;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity6;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewActivity7;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewMental1;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMental2;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMental3;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMental4;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMental5;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMental6;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMental7;

// tooltip label
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipSleep1;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipSleep2;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipSleep3;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipSleep4;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipSleep5;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipSleep6;

@property (strong, nonatomic) IBOutlet UILabel *labelTooltipActivity1;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipActivity2;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipActivity3;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipActivity4;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipActivity5;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipActivity6;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipActivity7;

@property (strong, nonatomic) IBOutlet UILabel *labelTooltipMental1;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipMental2;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipMental3;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipMental4;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipMental5;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipMental6;
@property (strong, nonatomic) IBOutlet UILabel *labelTooltipMental7;

// border below the calendar
@property (strong, nonatomic) IBOutlet UILabel *labelFirstBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelSecondBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelThirdBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelFourthBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelFifthBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelSixthBorder;
@property (strong, nonatomic) IBOutlet UILabel *labelSeventhBorder;


- (IBAction)buttonStopPressed:(id)sender;

- (IBAction)buttonFirstPressed:(id)sender;
- (IBAction)buttonSecondPressed:(id)sender;
- (IBAction)buttonThirdressed:(id)sender;
- (IBAction)buttonFourthPressed:(id)sender;
- (IBAction)buttonFifthressed:(id)sender;
- (IBAction)buttonSixthPressed:(id)sender;
- (IBAction)buttonSeventhPressed:(id)sender;

@end

@implementation RBCalibrationViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBCalibrationViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBCalibrationViewController"];
    
    return controller;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadToday];
    
    [_navigationBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    _navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    _barButtonStop.tintColor = [UIColor whiteColor];
    
    UIFont *font = [UIFont boldSystemFontOfSize:16.0f];
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    [self.barButtonStop setTitleTextAttributes:attributes forState:UIControlStateNormal];
    
    // set label text color
    self.labelSleep.textColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelSleepTime.textColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    
    self.labelActivity.textColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityTime.textColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    
    self.labelMental.textColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalTime.textColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    
    // set label text
    self.labelSleepTime.text = @"6:39 h";
    self.labelActivityTime.text = @"1:20 h";
    self.labelMentalTime.text = @"75 %";
    
    // set bar chart
    
    // sleep bar
    self.labelSleepBar1.backgroundColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelSleepBar1.text = @"";
    self.labelSleepBar1.frame = CGRectMake(175, 262, 13, -35);
    //[_imageViewSleep1 setImage:[UIImage imageNamed:@"_Bubble_blue.png"]];
    _labelTooltipSleep1.text = @"";
    
    self.labelSleepBar2.backgroundColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelSleepBar2.text = @"";
    self.labelSleepBar2.frame = CGRectMake(197, 262, 13, -50);
    //[_imageViewSleep2 setImage:[UIImage imageNamed:@"_Bubble_blue.png"]];
    _labelTooltipSleep2.text = @"";
    
    self.labelSleepBar3.backgroundColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelSleepBar3.text = @"";
    self.labelSleepBar3.frame = CGRectMake(219, 262, 13, -30);
    //[_imageViewSleep3 setImage:[UIImage imageNamed:@"_Bubble_blue.png"]];
    _labelTooltipSleep3.text = @"";
    
    self.labelSleepBar4.backgroundColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelSleepBar4.text = @"";
    self.labelSleepBar4.frame = CGRectMake(241, 262, 13, -20);
    //[_imageViewSleep4 setImage:[UIImage imageNamed:@"_Bubble_blue.png"]];
    _labelTooltipSleep4.text = @"";
    
    self.labelSleepBar5.backgroundColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelSleepBar5.text = @"";
    self.labelSleepBar5.frame = CGRectMake(263, 262, 13, -25);
    //[_imageViewSleep5 setImage:[UIImage imageNamed:@"_Bubble_blue.png"]];
    _labelTooltipSleep5.text = @"";
    
    self.labelSleepBar6.backgroundColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelSleepBar6.text = @"";
    self.labelSleepBar6.frame = CGRectMake(285, 262, 13, -10);
    [_imageViewSleep6 setImage:[UIImage imageNamed:@"_Bubble_blue.png"]];
    _labelTooltipSleep6.text = @"2:13h";
    
    // activity bar
    self.labelActivityBar1.backgroundColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityBar1.text = @"";
    self.labelActivityBar1.frame = CGRectMake(163, 368, 13, -35);
    //[_imageViewActivity1 setImage:[UIImage imageNamed:@"_Bubble_orange.png"]];
    _labelTooltipActivity1.text = @"";
    
    self.labelActivityBar2.backgroundColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityBar2.text = @"";
    self.labelActivityBar2.frame = CGRectMake(186, 368, 13, -50);
    //[_imageViewActivity2 setImage:[UIImage imageNamed:@"_Bubble_orange.png"]];
    _labelTooltipActivity2.text = @"";
    
    self.labelActivityBar3.backgroundColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityBar3.text = @"";
    self.labelActivityBar3.frame = CGRectMake(208, 368, 13, -30);
    //[_imageViewActivity3 setImage:[UIImage imageNamed:@"_Bubble_orange.png"]];
    _labelTooltipActivity3.text = @"";
    
    self.labelActivityBar4.backgroundColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityBar4.text = @"";
    self.labelActivityBar4.frame = CGRectMake(230, 368, 13, -20);
    //[_imageViewActivity4 setImage:[UIImage imageNamed:@"_Bubble_orange.png"]];
    _labelTooltipActivity4.text = @"";
    
    self.labelActivityBar5.backgroundColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityBar5.text = @"";
    self.labelActivityBar5.frame = CGRectMake(252, 368, 13, -25);
    //[_imageViewActivity5 setImage:[UIImage imageNamed:@"_Bubble_orange.png"]];
    _labelTooltipActivity5.text = @"";
    
    self.labelActivityBar6.backgroundColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityBar6.text = @"";
    self.labelActivityBar6.frame = CGRectMake(274, 368, 13, -10);
    //[_imageViewActivity6 setImage:[UIImage imageNamed:@"_Bubble_orange.png"]];
    _labelTooltipActivity6.text = @"";
    
    self.labelActivityBar7.backgroundColor = [UIColor colorWithRed:(230/255.0) green:(142/255.0) blue:(8/255.0) alpha:1];
    self.labelActivityBar7.text = @"";
    self.labelActivityBar7.frame = CGRectMake(296, 368, 13, -15);
    [_imageViewActivity7 setImage:[UIImage imageNamed:@"_Bubble_orange.png"]];
    _labelTooltipActivity7.text = @"3:13h";
    
    // mental bar
    self.labelMentalBar1.backgroundColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalBar1.text = @"";
    self.labelMentalBar1.frame = CGRectMake(163, 474, 13, -35);
    //[_imageViewMental1 setImage:[UIImage imageNamed:@"_Bubble_green.png"]];
    _labelTooltipMental1.text = @"";

    
    self.labelMentalBar2.backgroundColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalBar2.text = @"";
    self.labelMentalBar2.frame = CGRectMake(186, 474, 13, -50);
    //[_imageViewMental2 setImage:[UIImage imageNamed:@"_Bubble_green.png"]];
    _labelTooltipMental2.text = @"";
    
    self.labelMentalBar3.backgroundColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalBar3.text = @"";
    self.labelMentalBar3.frame = CGRectMake(208, 474, 13, -30);
    //[_imageViewMental3 setImage:[UIImage imageNamed:@"_Bubble_green.png"]];
    _labelTooltipMental3.text = @"";
    
    self.labelMentalBar4.backgroundColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalBar4.text = @"";
    self.labelMentalBar4.frame = CGRectMake(230, 474, 13, -20);
    //[_imageViewMental4 setImage:[UIImage imageNamed:@"_Bubble_green.png"]];
    _labelTooltipMental4.text = @"";
    
    self.labelMentalBar5.backgroundColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalBar5.text = @"";
    self.labelMentalBar5.frame = CGRectMake(252, 474, 13, -25);
    //[_imageViewMental5 setImage:[UIImage imageNamed:@"_Bubble_green.png"]];
    _labelTooltipMental5.text = @"";
    
    self.labelMentalBar6.backgroundColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalBar6.text = @"";
    self.labelMentalBar6.frame = CGRectMake(274, 474, 13, -10);
    //[_imageViewMental6 setImage:[UIImage imageNamed:@"_Bubble_green.png"]];
    _labelTooltipMental6.text = @"";
    
    self.labelMentalBar7.backgroundColor = [UIColor colorWithRed:(37/255.0) green:(119/255.0) blue:(45/255.0) alpha:1];
    self.labelMentalBar7.text = @"";
    self.labelMentalBar7.frame = CGRectMake(296, 474, 13, -15);
    [_imageViewMental7 setImage:[UIImage imageNamed:@"_Bubble_green.png"]];
    _labelTooltipMental7.text = @"3:13h";
    
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

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
//    [self.slidingViewController.topViewController.view addGestureRecognizer:self.slidingViewController.panGesture];
//    self.slidingViewController.topViewAnchoredGesture = ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGesturePanning;
    
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
    
    [_imageViewFirst setImage:[UIImage imageNamed:@""]];
    
    _labelFirstDay.text = @"Today";
    
    UIFont *boldFont = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    [_labelFirstDay setFont:boldFont];
    
    UIFont *boldFontNumber = [UIFont boldSystemFontOfSize:22];
    [_labelFirstNumber setFont:boldFontNumber];
    
    _buttonFirst.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(250/255.0) blue:(250/255.0) alpha:1];

}

#pragma mark - action
- (IBAction)buttonStopPressed:(id)sender
{
    CATransition* transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.type = kCATransitionMoveIn;
    transition.subtype = kCATransitionFromTop;
    [self.navigationController.view.layer addAnimation:transition
                                                forKey:kCATransition];
    
    RBStopCalibrationViewController *controller = [RBStopCalibrationViewController controllerWithStoryBoard:self.storyboard];
    [self.navigationController pushViewController:controller animated:YES];
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
    
    [_imageViewFirst setImage:[UIImage imageNamed:@""]];
    [_imageViewSecond setImage:[UIImage imageNamed:@""]];
    [_imageViewThird setImage:[UIImage imageNamed:@""]];
    [_imageViewFourth setImage:[UIImage imageNamed:@""]];
    [_imageViewFifth setImage:[UIImage imageNamed:@""]];
    [_imageViewSixth setImage:[UIImage imageNamed:@""]];
    [_imageViewSeventh setImage:[UIImage imageNamed:@""]];
    
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
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    [_imageViewFirst setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSecond setImage:[UIImage imageNamed:@""]];
    [_imageViewThird setImage:[UIImage imageNamed:@""]];
    [_imageViewFourth setImage:[UIImage imageNamed:@""]];
    [_imageViewFifth setImage:[UIImage imageNamed:@""]];
    [_imageViewSixth setImage:[UIImage imageNamed:@""]];
    [_imageViewSeventh setImage:[UIImage imageNamed:@""]];
    
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
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    [_imageViewFirst setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSecond setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewThird setImage:[UIImage imageNamed:@""]];
    [_imageViewFourth setImage:[UIImage imageNamed:@""]];
    [_imageViewFifth setImage:[UIImage imageNamed:@""]];
    [_imageViewSixth setImage:[UIImage imageNamed:@""]];
    [_imageViewSeventh setImage:[UIImage imageNamed:@""]];
    
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
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    [_imageViewFirst setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSecond setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewThird setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewFourth setImage:[UIImage imageNamed:@""]];
    [_imageViewFifth setImage:[UIImage imageNamed:@""]];
    [_imageViewSixth setImage:[UIImage imageNamed:@""]];
    [_imageViewSeventh setImage:[UIImage imageNamed:@""]];
    
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
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    [_imageViewFirst setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSecond setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewThird setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewFourth setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewFifth setImage:[UIImage imageNamed:@""]];
    [_imageViewSixth setImage:[UIImage imageNamed:@""]];
    [_imageViewSeventh setImage:[UIImage imageNamed:@""]];
    
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
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(211/255.0) green:(211/255.0) blue:(211/255.0) alpha:1];
    
    [_imageViewFirst setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSecond setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewThird setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewFourth setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewFifth setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSixth setImage:[UIImage imageNamed:@""]];
    [_imageViewSeventh setImage:[UIImage imageNamed:@""]];
    
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
    _labelFirstBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSecondBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelThirdBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFourthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelFifthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSixthBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    _labelSeventhBorder.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    
    [_imageViewFirst setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSecond setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewThird setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewFourth setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewFifth setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSixth setImage:[UIImage imageNamed:@"_checkmark.png"]];
    [_imageViewSeventh setImage:[UIImage imageNamed:@""]];
    
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

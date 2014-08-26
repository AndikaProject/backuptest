//
//  RBSleepPlanViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 8/8/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBSleepPlanViewController.h"

#import "UIViewController+ECSlidingViewController.h"

@interface RBSleepPlanViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageViewCirclePlus;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewLineBar;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewCircleDefault;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewCircleStar;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewCircleStar2;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewCircleDefault2;

@property (strong, nonatomic) IBOutlet UILabel *labelCalibrated;
@property (strong, nonatomic) IBOutlet UILabel *labelFinalGoal;
@property (strong, nonatomic) IBOutlet UILabel *labelCalibratedHour1;
@property (strong, nonatomic) IBOutlet UILabel *labelFinalPercent1;
@property (strong, nonatomic) IBOutlet UILabel *labelCalibratedHourDone;
@property (strong, nonatomic) IBOutlet UILabel *labelFinalPercentDone;
@property (strong, nonatomic) IBOutlet UILabel *labelCalibratedHourDone2;
@property (strong, nonatomic) IBOutlet UILabel *labelFinalPercentDone2;
@property (strong, nonatomic) IBOutlet UILabel *labelCalibratedHour2;
@property (strong, nonatomic) IBOutlet UILabel *labelFinalPercent2;

@end

@implementation RBSleepPlanViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_scrollerBar setScrollEnabled:YES];
    
    // set label color
    self.labelCalibrated.backgroundColor = [UIColor colorWithRed:(116/255.0) green:(204/255.0) blue:(243/255.0) alpha:1];
    self.labelFinalGoal.backgroundColor = [UIColor colorWithRed:(220/255.0) green:(241/255.0) blue:(251/255.0) alpha:1];
    self.labelCalibratedHour1.backgroundColor = [UIColor colorWithRed:(116/255.0) green:(204/255.0) blue:(243/255.0) alpha:1];
    self.labelFinalPercent1.backgroundColor = [UIColor colorWithRed:(220/255.0) green:(241/255.0) blue:(251/255.0) alpha:1];
    self.labelCalibratedHourDone.backgroundColor = [UIColor colorWithRed:(116/255.0) green:(204/255.0) blue:(243/255.0) alpha:1];
    self.labelFinalPercentDone.backgroundColor = [UIColor colorWithRed:(220/255.0) green:(241/255.0) blue:(251/255.0) alpha:1];
    self.labelCalibratedHourDone2.backgroundColor = [UIColor colorWithRed:(116/255.0) green:(204/255.0) blue:(243/255.0) alpha:1];
    self.labelFinalPercentDone2.backgroundColor = [UIColor colorWithRed:(220/255.0) green:(241/255.0) blue:(251/255.0) alpha:1];
    self.labelCalibratedHour2.backgroundColor = [UIColor colorWithRed:(116/255.0) green:(204/255.0) blue:(243/255.0) alpha:1];
    self.labelFinalPercent2.backgroundColor = [UIColor colorWithRed:(220/255.0) green:(241/255.0) blue:(251/255.0) alpha:1];
    
    // set label position and size
    self.labelCalibrated.frame = CGRectMake(54, 75, 150, 28);
    self.labelFinalGoal.frame = CGRectMake(54, 105, 200, 28);
    self.labelCalibratedHour1.frame = CGRectMake(54, 13, 120, 28);
    self.labelFinalPercent1.frame = CGRectMake(54, 42, 140, 28);
    self.labelCalibratedHourDone.frame = CGRectMake(54, 87, 200, 28);
    self.labelFinalPercentDone.frame = CGRectMake(54, 116, 175, 28);
    self.labelCalibratedHourDone2.frame = CGRectMake(54, 160, 165, 28);
    self.labelFinalPercentDone2.frame = CGRectMake(54, 189, 165, 28);
    self.labelCalibratedHour2.frame = CGRectMake(54, 230, 155, 28);
    self.labelFinalPercent2.frame = CGRectMake(54, 259, 180, 28);
    
    // set text to label
    _labelCalibrated.text = @"Calibrated 4:47 h";
    _labelFinalGoal.text = @"Final goal 9:10 h";
    _labelCalibratedHour1.text = @"4:39 h";
    _labelFinalPercent1.text = @"48%";
    _labelCalibratedHourDone.text = @"9:52 h";
    _labelFinalPercentDone.text = @"128%";
    _labelCalibratedHourDone2.text = @"7:10 h";
    _labelFinalPercentDone2.text = @"100%";
    _labelCalibratedHour2.text = @"You slept 6:23 h";
    _labelFinalPercent2.text = @"8:10 h";
    
    
    // set image view
    [_imageViewCirclePlus setImage:[UIImage imageNamed:@"circlePlus"]];
    [_imageViewLineBar setImage:[UIImage imageNamed:@"lineBar"]];
    [_imageViewCircleDefault setImage:[UIImage imageNamed:@"circleDefault"]];
    [_imageViewCircleStar setImage:[UIImage imageNamed:@"circleStar"]];
    [_imageViewCircleStar2 setImage:[UIImage imageNamed:@"circleStar"]];
    [_imageViewCircleDefault2 setImage:[UIImage imageNamed:@"circleDefault"]];
    
    // set rounded image view
    self.imageViewCirclePlus.layer.cornerRadius = self.imageViewCirclePlus.frame.size.width / 2;
    self.imageViewCirclePlus.clipsToBounds = YES;
    
    self.imageViewCircleDefault.layer.cornerRadius = self.imageViewCircleDefault.frame.size.width / 2;
    self.imageViewCircleDefault.clipsToBounds = YES;
    
    self.imageViewCircleStar.layer.cornerRadius = self.imageViewCircleStar.frame.size.width / 2;
    self.imageViewCircleStar.clipsToBounds = YES;
    
    self.imageViewCircleStar2.layer.cornerRadius = self.imageViewCircleStar2.frame.size.width / 2;
    self.imageViewCircleStar2.clipsToBounds = YES;
    
    self.imageViewCircleDefault2.layer.cornerRadius = self.imageViewCircleDefault2.frame.size.width / 2;
    self.imageViewCircleDefault2.clipsToBounds = YES;
    
    // set image view border color
    self.imageViewCirclePlus.layer.borderWidth = 3.0f;
    self.imageViewCirclePlus.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.imageViewCircleDefault.layer.borderWidth = 3.0f;
    self.imageViewCircleDefault.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.imageViewCircleStar.layer.borderWidth = 3.0f;
    self.imageViewCircleStar.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.imageViewCircleStar2.layer.borderWidth = 3.0f;
    self.imageViewCircleStar2.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.imageViewCircleDefault2.layer.borderWidth = 3.0f;
    self.imageViewCircleDefault2.layer.borderColor = [UIColor whiteColor].CGColor;

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [_scrollerBar setContentSize:CGSizeMake(320, 600)];
    
    [self.slidingViewController.topViewController.view addGestureRecognizer:self.slidingViewController.panGesture];
    self.slidingViewController.topViewAnchoredGesture = ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGesturePanning;
    
}

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

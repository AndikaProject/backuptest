//
//  RBWeeksSleepPlanViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 8/22/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBWeeksSleepPlanViewController.h"

@interface RBWeeksSleepPlanViewController ()

// weeks chart
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar0;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar1;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar2;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar3;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar4;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar5;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar6;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar7;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar8;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar9;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar10;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar11;
@property (strong, nonatomic) IBOutlet UILabel *labelWeeksBar12;

@property (strong, nonatomic) IBOutlet UILabel *labelSleepTime;
@property (strong, nonatomic) IBOutlet UILabel *labelGoalTime;
@property (strong, nonatomic) IBOutlet UILabel *labelPerfPercent;

@property (strong, nonatomic) IBOutlet UILabel *labelFirst;
@property (strong, nonatomic) IBOutlet UILabel *labelSecond;

@property (strong, nonatomic) IBOutlet UINavigationBar *navigationBar;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControlWeeks;

@property (strong, nonatomic) IBOutlet UIImageView *imageViewFirst;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSecond;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewThird;

- (IBAction)segmentedControlAction:(id)sender;

@end

@implementation RBWeeksSleepPlanViewController

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
    
    [_navigationBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    _navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    // weeks chart
    self.labelWeeksBar0.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar0.text = @"";
    self.labelWeeksBar0.frame = CGRectMake(15, 146, 13, -38);
    
    self.labelWeeksBar1.backgroundColor = [UIColor colorWithRed:(46/255.0) green:(122/255.0) blue:(191/255.0) alpha:1];
    self.labelWeeksBar1.text = @"";
    self.labelWeeksBar1.frame = CGRectMake(38, 146, 13, -35);
    
    //self.labelWeeksBar2.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar2.text = @"";
    self.labelWeeksBar2.frame = CGRectMake(61, 146, 13, -38);
    
    //self.labelWeeksBar3.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar3.text = @"";
    self.labelWeeksBar3.frame = CGRectMake(84, 146, 13, -38);
    
    //self.labelWeeksBar4.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar4.text = @"";
    self.labelWeeksBar4.frame = CGRectMake(107, 146, 13, -38);
    
    //self.labelWeeksBar5.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar5.text = @"";
    self.labelWeeksBar5.frame = CGRectMake(130, 146, 13, -38);
    
    //self.labelWeeksBar6.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar6.text = @"";
    self.labelWeeksBar6.frame = CGRectMake(153, 146, 13, -38);
    
    //self.labelWeeksBar7.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar7.text = @"";
    self.labelWeeksBar7.frame = CGRectMake(176, 146, 13, -38);
    
    //self.labelWeeksBar8.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar8.text = @"";
    self.labelWeeksBar8.frame = CGRectMake(199, 146, 13, -38);
    
    //self.labelWeeksBar9.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar9.text = @"";
    self.labelWeeksBar9.frame = CGRectMake(220, 146, 13, -38);
    
    //self.labelWeeksBar10.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar10.text = @"";
    self.labelWeeksBar10.frame = CGRectMake(240, 146, 13, -38);
    
    //self.labelWeeksBar11.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar11.text = @"";
    self.labelWeeksBar11.frame = CGRectMake(263, 146, 13, -38);
    
    //self.labelWeeksBar12.backgroundColor = [UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1];
    self.labelWeeksBar12.text = @"";
    self.labelWeeksBar12.frame = CGRectMake(286, 146, 13, -38);
    
    // bold font in segmented control
    UIFont *font = [UIFont boldSystemFontOfSize:12.0f];
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    [self.segmentedControlWeeks setTitleTextAttributes:attributes forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - action
- (IBAction)segmentedControlAction:(UISegmentedControl *)sender
{
    
    NSInteger selectedSegment = _segmentedControlWeeks.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        [self.labelFirst setText:@"Slept last night"];
        [self.labelSecond setText:@"Goal"];
        
        [self.labelSleepTime setText:@"4:57"];
        [self.labelGoalTime setText:@"6:10"];
        [self.labelPerfPercent setText:@"76%"];
    }
    else{
        [self.labelSleepTime setText:@"6:10"];
        [self.labelGoalTime setText:@"4:57"];
        [self.labelPerfPercent setText:@"76%"];
        
        [self.labelFirst setText:@"Week goal"];
        [self.labelSecond setText:@"Average per night"];
    }
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

//
//  RBThirdViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 8/5/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBThirdViewController.h"

#import "UIViewController+ECSlidingViewController.h"

@interface RBThirdViewController ()

@end

@implementation RBThirdViewController

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
    
    [self.slidingViewController.topViewController.view addGestureRecognizer:self.slidingViewController.panGesture];
    self.slidingViewController.topViewAnchoredGesture = ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGesturePanning;
    
//    NSString *urlString = [NSString stringWithFormat:@"http://54.255.145.51/vytle/api/get_recent_posts/?page=1"];
//    
//    NSURL *url = [NSURL URLWithString:urlString];
//    
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    
//    NSError *error;
//    
//    NSMutableArray *json = (NSMutableArray*)[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
//    
//    NSLog(@"%@", [json objectAtIndex:0]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)getBlog
//{
//    NSString *blogUrl = @"http://54.255.145.51/vytle/api/get_recent_posts/?page=1";
//    NSURL *url = [NSURL URLWithString:blogUrl];
//    
//    NSURLSession *session = [NSURLSession sharedSession];
//    [[session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
//        //handle response
//        NSLog(@"Got response %@ with error %@.\n", response, error);
//        NSLog(@"DATA:\n%@\nEND DATA\n",
//              [[NSString alloc] initWithData: data
//                                    encoding: NSUTF8StringEncoding]);
//    }] resume];
//}

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

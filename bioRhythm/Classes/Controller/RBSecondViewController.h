//
//  RBSecondViewController.h
//  bioRhythm
//
//  Created by defindal irvan on 7/25/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RBSecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollerCoach;

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard;

@end

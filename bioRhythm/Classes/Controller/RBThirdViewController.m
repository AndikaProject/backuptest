//
//  RBThirdViewController.m
//  bioRhythm
//
//  Created by defindal irvan on 8/5/14.
//  Copyright (c) 2014 defindal irvan. All rights reserved.
//

#import "RBThirdViewController.h"

#import "RBBlogCustomCell.h"
#import "UIViewController+ECSlidingViewController.h"

@interface RBThirdViewController ()

@property (strong, nonatomic) IBOutlet UITableView *tableViewBlog;

@end

@implementation RBThirdViewController

+ (instancetype)controllerWithStoryBoard:(UIStoryboard *)storyboard {
    RBThirdViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"RBThirdViewController"];
    
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
    
    //[self.slidingViewController.topViewController.view addGestureRecognizer:self.slidingViewController.panGesture];
    //self.slidingViewController.topViewAnchoredGesture = ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGesturePanning;
    
    [self.tableViewBlog registerNib:[UINib nibWithNibName:@"RBBlogCustomCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier: @"RBBlogCustomCell"];
    
    self.navigationItem.hidesBackButton = YES;
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:(79/255.0) green:(193/255.0) blue:(233/255.0) alpha:1]];
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    [_tableViewBlog setSeparatorInset:UIEdgeInsetsZero];
    
    NSString *str  = @"http://54.255.145.51/vytle/api/get_recent_posts/?page=1";
    NSURL *url = [NSURL URLWithString:str];
    NSData *data =[NSData dataWithContentsOfURL:url];
    NSError *error = nil;
    
    id response= [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    
    _keys = [[NSMutableArray alloc]init];
    _keys = [response allKeys];
    _keys = response;
    
    id posts = [response objectForKey:@"posts"];
    _postArray = (NSArray *)posts;
    
    for (NSDictionary *post in _postArray){
        NSLog(@"tes = %@", [post valueForKeyPath:@"title"]);
    }
    
}

- (void)viewDidAppear:(BOOL)animated{
    [_scrollerBlog setContentSize:CGSizeMake(320, 720)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_postArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

        return 80;


}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section ==0){
        
        
        RBBlogCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RBBlogCustomCell"];
        
        NSDictionary *item = [_postArray objectAtIndex:indexPath.row];
        cell.labelHeader.text = [item objectForKey:@"title"];
        
        NSString *path = [item objectForKey:@"thumbnail"];
        NSURL *url = [NSURL URLWithString:path];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        cell.imageViewArticle.image  = image;
        
        cell.labelTime.text =[item objectForKey:@"date"];
        
        
        return cell;
    }
    return nil;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *item = [_postArray objectAtIndex:indexPath.row];
    
    NSRange r;
    
    NSString *s = [item objectForKey:@"content"];
    NSString *u = [item objectForKey:@"title"];
    
    
    while ((r=[s rangeOfString:@"<[^>]+>\\s*" options:NSRegularExpressionSearch]).location != NSNotFound)
        s = [s stringByReplacingCharactersInRange:r withString:@""];
    
    NSLog(@"this %@",s  );
    
    
    UIAlertView *messageAlert = [[UIAlertView alloc]initWithTitle:u message:s delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [messageAlert show];

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

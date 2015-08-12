//
//  ProfileViewController.m
//  Example
//
//  Created by admin on 11/8/15.
//  Copyright (c) 2015 Jonathan Tribouharet. All rights reserved.
//

#import "ProfileViewController.h"

@implementation ProfileViewController

- (void)viewDidLoad {
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    //[self.scrollView setBackgroundColor:[UIColor colorWithRed:251.0/255.0 green:251.0/255.0 blue:251.0/255.0 alpha:1.0]];
    self.scrollView.backgroundColor = [UIColor whiteColor];
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width, 1000.0)];
    [self.scrollView setDelegate:self];
    [self.view addSubview:self.scrollView];

    self.headerView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 200.0, self.scrollView.frame.size.width, 30.0)];
    self.headerView.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:self.headerView];
    
    UIButton *btnProfile = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnProfile addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnProfile setTitle:@"Profile" forState:UIControlStateNormal];
    btnProfile.tag = 1;
    btnProfile.frame = CGRectMake(0.0, 0.0, self.headerView.frame.size.width / 3, self.headerView.frame.size.height);
    [self.headerView addSubview:btnProfile];

    UIButton *btnPage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnPage addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnPage setTitle:@"Fan Page" forState:UIControlStateNormal];
    btnPage.tag = 2;
    btnPage.frame = CGRectMake(self.headerView.frame.size.width / 3, 0.0, self.headerView.frame.size.width / 3, self.headerView.frame.size.height);
    [self.headerView addSubview:btnPage];

    UIButton *btnBooking = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnBooking addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnBooking setTitle:@"Booking" forState:UIControlStateNormal];
    btnBooking.tag = 3;
    btnBooking.frame = CGRectMake(self.headerView.frame.size.width / 3 * 2, 0.0, self.headerView.frame.size.width / 3, self.headerView.frame.size.height);
    [self.headerView addSubview:btnBooking];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //NSLog(@"y:%f", scrollView.contentOffset.y);
    if (scrollView.contentOffset.y > 200.0)
        [self.headerView setFrame:CGRectMake(0.0, scrollView.contentOffset.y, self.scrollView.frame.size.width, 30.0)];
}

-(void) buttonClicked:(UIButton*)sender {
    NSLog(@"you clicked on button %ld", (long)sender.tag);
    if (sender.tag == 3) {
    }
}

@end

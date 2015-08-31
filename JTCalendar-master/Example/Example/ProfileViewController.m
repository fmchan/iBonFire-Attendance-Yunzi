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
    self.view.backgroundColor = [UIColor whiteColor];
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.0, 20.0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 20.0)];
    //[self.scrollView setBackgroundColor:[UIColor colorWithRed:251.0/255.0 green:251.0/255.0 blue:251.0/255.0 alpha:1.0]];
    //self.scrollView.backgroundColor = [UIColor whiteColor];
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width, 1000.0)];
    [self.scrollView setDelegate:self];
    [self.view addSubview:self.scrollView];

    self.headerView = [[HeaderView alloc] initWithFrame:CGRectMake(0.0, 200.0, self.scrollView.frame.size.width, 30.0)];
    self.headerView.parent = self;
    [self.scrollView addSubview:self.headerView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //NSLog(@"y:%f", scrollView.contentOffset.y);
    if (scrollView.contentOffset.y > 200.0)
        [self.headerView setFrame:CGRectMake(0.0, scrollView.contentOffset.y, self.scrollView.frame.size.width, 30.0)];
}

@end

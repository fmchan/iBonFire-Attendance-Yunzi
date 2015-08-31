//
//  HeaderView.m
//  Example
//
//  Created by admin on 26/8/15.
//  Copyright (c) 2015 Jonathan Tribouharet. All rights reserved.
//

#import "HeaderView.h"
#import "ProfileViewController.h"
#import "BasicViewController.h"

@implementation HeaderView
- (id)initWithFrame:(CGRect)rect {
    self = [super initWithFrame:rect];
    self.backgroundColor = [UIColor blueColor];
    
    UIButton *btnProfile = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnProfile addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnProfile setTitle:@"Profile" forState:UIControlStateNormal];
    btnProfile.tag = 1;
    btnProfile.frame = CGRectMake(0.0, 0.0, self.frame.size.width / 3, self.frame.size.height);
    [self addSubview:btnProfile];
    
    UIButton *btnPage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnPage addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnPage setTitle:@"Fan Page" forState:UIControlStateNormal];
    btnPage.tag = 2;
    btnPage.frame = CGRectMake(self.frame.size.width / 3, 0.0, self.frame.size.width / 3, self.frame.size.height);
    [self addSubview:btnPage];
    
    UIButton *btnBooking = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnBooking addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnBooking setTitle:@"Booking" forState:UIControlStateNormal];
    btnBooking.tag = 3;
    btnBooking.frame = CGRectMake(self.frame.size.width / 3 * 2, 0.0, self.frame.size.width / 3, self.frame.size.height);
    [self addSubview:btnBooking];
    return self;
}
-(void) buttonClicked:(UIButton*)sender {
    NSLog(@"you clicked on button %ld", (long)sender.tag);
    if (sender.tag == 1) {
        ProfileViewController *pController = [ProfileViewController new];
        [self.parent.navigationController pushViewController:pController animated:NO];
    } else
    if (sender.tag == 3) {
        BasicViewController *bController = [BasicViewController new];
        [self.parent.navigationController pushViewController:bController animated:NO];
    }
}
@end

//
//  ViewController.m
//  ScrollTest
//
//  Created by Douglas Voss on 4/10/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)printRect:(CGRect)rect name:(NSString *)name
{
    NSLog(@"%@ x=%f, y=%f, width=%f, height=%f", name, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    CGRect screenRect = [UIScreen mainScreen].bounds;
    CGRect topScreenRect = screenRect;
    topScreenRect.size.height /= 2.0;
    CGRect bottomScreenRect = screenRect;
    bottomScreenRect.size.height /= 2.0;
    bottomScreenRect.origin.y += bottomScreenRect.size.height;
    
    
    UIImage * topImage = [UIImage imageNamed: @"spaceshuttle.jpg"];
    UIImage * bottomImage = [UIImage imageNamed: @"rainbow-marble.jpg"];
    //UIImage * myImage = [UIImage imageNamed: @"chicken.jpg"];
    UIImageView *topImageView = [[UIImageView alloc] initWithImage:topImage];
    UIImageView *bottomImageView = [[UIImageView alloc] initWithImage:bottomImage];
    
    //[self printRect:screenRect name:@"screenRect"];
    //[self printRect:pictureView.frame name:@"pictureView.frame"];
    
    UIScrollView *topScrollView = [[UIScrollView alloc] initWithFrame:topScreenRect];
    topScrollView.contentSize = topImageView.frame.size;
    [topScrollView addSubview:topImageView];
    
    UIScrollView *bottomScrollView = [[UIScrollView alloc] initWithFrame:bottomScreenRect];
    bottomScrollView.contentSize = bottomImageView.frame.size;
    [bottomScrollView addSubview:bottomImageView];
    
    [self.view addSubview:topScrollView];
    [self.view addSubview:bottomScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

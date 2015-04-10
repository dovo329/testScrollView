//
//  AppDelegate.m
//  ScrollTest
//
//  Created by Douglas Voss on 4/10/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)printRect:(CGRect)rect name:(NSString *)name
{
    NSLog(@"%@ x=%f, y=%f, width=%f, height=%f", name, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    CGRect screenRect = self.window.bounds;

    // Override point for customization after application launch.
    //UIImage * myImage = [UIImage imageNamed: @"rainbow-marble.jpg"];
    UIImage * myImage = [UIImage imageNamed: @"spaceshuttle.jpg"];
    //UIImage * myImage = [UIImage imageNamed: @"chicken.jpg"];
    UIImageView *pictureView = [[UIImageView alloc] initWithImage:myImage];
    
    [self printRect:screenRect name:@"screenRect"];
    [self printRect:pictureView.frame name:@"pictureView.frame"];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    scrollView.contentSize = pictureView.frame.size;
    
    //[self.window addSubview:pictureView];
    [scrollView addSubview:pictureView];
    [self.window addSubview:scrollView];
    self.window.backgroundColor = [UIColor clearColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

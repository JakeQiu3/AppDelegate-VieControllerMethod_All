//
//  AppDelegate.m
//  FirstApp
//
//  Created by 邱少依 on 15/12/23.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

#warning 少：含有导航控制器的应用后，根视图：0，3，然后是rootViewController。 不含导航的是0，rootViewController的1，2，再3（应用已经获得焦点）。
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
///纯代码版
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *viewCon = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewCon];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
     NSLog(@"0程序已经启动...");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     NSLog(@"程序将要失去焦点...");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
      NSLog(@"程序已经进入后台...");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSLog(@"应用将会进入前台。。。");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"3.应用已经获得焦点。。。");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
     NSLog(@"应用将要终止...");
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    NSLog(@"应用受到内存警告。。。");
}
@end

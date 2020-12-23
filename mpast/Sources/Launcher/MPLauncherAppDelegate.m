//
//  MPLauncherAppDelegate.m
//  mpast
//
//  Created by zhouhong on 2020/12/21.
//  Copyright © 2020 ORGNIZATION_NAME. All rights reserved.
//

#import "MPLauncherAppDelegate.h"
#import "MPTabBarViewController.h"
#import "mpast-Swift.h"

@interface MPLauncherAppDelegate ()

@property (nonatomic, strong) MPTabBarViewController* rootVC;

@end

@implementation MPLauncherAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
        NSArray *baseImgs = [NSArray arrayWithObjects:
                             @"TabBar_HomeBar",
                             @"TabBar_Discovery",
                             nil];
        NSArray *selectImgs = [NSArray arrayWithObjects:
                               @"TabBar_HomeBar_Sel",
                               @"TabBar_Discovery_Sel",
                               nil];
        
        MainViewController* tab1ViewController = [[MainViewController alloc] init];
        SecViewController* tab2ViewController = [[SecViewController alloc] init];
        
        NSArray *navArray = @[tab1ViewController, tab2ViewController];
        NSArray *titles = @[@"主要功能", @"次要功能"];
        for (int i = 0; i < [navArray count]; i ++)
        {
            UIImage *bImg = [UIImage imageNamed:baseImgs[i]];
            UIImage *selectImg = [UIImage imageNamed:selectImgs[i]];
            
            UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:titles[i] image:bImg selectedImage:selectImg];
            item.selectedImage = [item.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            item.image = [item.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            item.tag = i;
            [(UIViewController *)navArray[i] setTabBarItem:item];
            ((UIViewController *)navArray[i]).title = titles[i];
        }
        
        self.rootVC = [[MPTabBarViewController alloc] init];

        self.rootVC.viewControllers = navArray;
        self.rootVC.selectedIndex = 0;
        [self.rootVC.delegate tabBarController:self.rootVC didSelectViewController:tab1ViewController];
        
        [MPNebulaAdapterInterface initNebula];
    }
    return self;
}

- (id)createLoggingViewController:(NSString *)className
{
    id vc;
    Class cl = NSClassFromString(className);
    if (cl != Nil) {
        vc = [[cl alloc]init];
    }
    else {
        vc = (DTViewController *)[[DTViewController alloc] init];
    }
    return vc;
}


- (UIViewController *)rootControllerInApplication:(DTMicroApplication *)application
{
    return self.rootVC;
}

- (void)applicationDidFinishLaunching:(DTMicroApplication *)application
{
    
}

- (void)application:(DTMicroApplication *)application willResumeWithOptions:(NSDictionary *)launchOptions
{
    
}


@end

//
//  gruAppDelegate.m
//  StarWars
//
//  Created by user22769 on 21/05/14.
//  Copyright (c) 2014 gru. All rights reserved.
//

#import "gruAppDelegate.h"
#import "GRUCharacterModel.h"
#import "GRUCharacterViewController.h"
#import "GRUWikiController.h"

@implementation gruAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //CARGAR MODELO
    //vader
    NSURL *url = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Darth_Vader"];
    NSURL *vaderSound = [[NSBundle mainBundle]URLForResource:@"vader" withExtension:@"caf"];
    NSData *vaderSound2 = [NSData dataWithContentsOfURL:vaderSound];
    
    GRUCharacterModel *vader = [[GRUCharacterModel alloc]initWithFirstName:@"Anakyn" lastName:@"SkyWalker" alias:@"vader" wikiPage:url
                                                                     photo:[UIImage imageNamed:@"darthVader.jpg"] soundData:vaderSound2];
    
    
    
    
    //C3PO
    NSURL *urlC3po = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Darth_Vader"];
    NSURL *c3poSound = [[NSBundle mainBundle]URLForResource:@"c3po" withExtension:@"caf"];
    NSData *c3poSound2 = [NSData dataWithContentsOfURL:c3poSound];
    
    GRUCharacterModel *c3po = [[GRUCharacterModel alloc]initWithFirstName:@"C3PO" lastName:@"" alias:@"c3po" wikiPage:urlC3po
                                                                    photo:[UIImage imageNamed:@"c3po.jpg"] soundData:c3poSound2];
    
    //CEAR NAVEGACION E INTERFAZ
    GRUCharacterViewController *vaderController = [[GRUCharacterViewController alloc]initWithModel:vader];
    GRUCharacterViewController *c3poController = [[GRUCharacterViewController alloc]initWithModel:c3po];
    
    UINavigationController *nv = [[UINavigationController alloc]initWithRootViewController:vaderController];
    UINavigationController *nvc3 = [[UINavigationController alloc]initWithRootViewController:c3poController];
    
    UITabBarController *tabBar =[[UITabBarController alloc]init];
    tabBar.viewControllers=@[nv,nvc3];
    self.window.rootViewController = tabBar;
    
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor blueColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

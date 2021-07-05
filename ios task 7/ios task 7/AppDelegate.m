//
//  AppDelegate.m
//  ios task 7
//
//  Created by Василий Пенькевич on 5.07.21.
//

#import "AppDelegate.h"
#import "SignInViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    SignInViewController *rootVC = [[SignInViewController alloc] initWithNibName:@"LoginView" bundle:nil];
    [window setRootViewController:rootVC];
    
    self.window = window;
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end

//
//  AppDelegate.m
//  JSPatchTest
//
//  Created by huangwei on 2020/5/29.
//  Copyright © 2020 huangwei. All rights reserved.
//

#import "AppDelegate.h"
#import "HWMainVC.h"
#import "JSPatchPlatform/JSPatch.h"

#import <Bugly/Bugly.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[HWMainVC alloc]init]];
    self.window.rootViewController = nav;
    /*[JSPatch setupCallback:^(JPCallbackType type, NSDictionary *data, NSError *error) {
            if (type == JPCallbackTypeJSException) {
                NSAssert(NO, data[@"msg"]);
            }
    }];
    [JSPatch startWithAppKey:@"b57288939f783076"];
    [JSPatch setupRSAPublicKey:@"-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDaIbl/MGkoL0prWC2GYeTTWyI\nttszZOv+N8Ve/jvqjTLXkggNCFrHNoJCjFlZBCXzv1Bod1WSMVXOCAnVn7kq9f6y\nZHsRasH3H8mrE2DomLf7rPZWhM/O6rt3VZAdKAHawZe2T+J20maGiZdgwNChGiG9\nFQHF2z6R3cC5seQMRQIDAQAB\n-----END PUBLIC KEY-----"];
    [JSPatch setupUserData:@{@"userId":@"10000001"}];
    #ifdef DEBUG
    [JSPatch setupDevelopment];
    #endif
    [JSPatch sync];
//    [JSPatch showDebugView];
    [JSPatch presentDebugViewController];*/
    [JSPatch testScriptInBundle];
    
    [Bugly startWithAppId:@"0b19317e6e"];
    return YES;
}


#pragma mark - UISceneSession lifecycle


/*- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}*/


@end

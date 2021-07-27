//
//  AppDelegate.m
//  MetrixTestApp
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

#import "AppDelegate.h"
@import Metrix;

@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [Metrix initializeWithMetrixAppId:@"lcqmfsnvhzznvhe"];

    printf("[Admin Objective-C]: SessionNum: %d, SessionId: %s", (int)[Metrix getSessionNum], [[Metrix getSessionId] UTF8String]);

    [Metrix addUserAttributesWithUserAttrs: @{@"phone": @"11111111111"}];

    [Metrix setDefaultTrackerWithTrackerToken: @"uevt4h"];

    [Metrix setOnAttributionChangedListener:^(AttributionData *data) {
        printf("[Admin Objective-C]: AttributionStatus: %s", [[data attributionStatusRaw] UTF8String]);
    }];

    [Metrix setUserIdListener:^(NSString *string) {
        printf("[Admin Objective-C]: UserId: %s", [string UTF8String]);
    }];

    [Metrix setStoreWithStoreName:@"App Store"];

    [Metrix setAppSecretWithSecretId:1 info1:429751687 info2:1057026454 info3:796046595 info4:610423971];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options API_AVAILABLE(ios(13.0)) {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions API_AVAILABLE(ios(13.0)) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

@end

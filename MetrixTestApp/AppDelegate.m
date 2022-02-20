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
    
    [MetrixClient initializeWithMetrixAppId:@"lcqmfsnvhzznvhe"];

    // Optional
    [MetrixClient addUserAttributesWithUserAttrs: @{@"phone": @"09121111111"}];

    // Optional
    [MetrixClient setDefaultTrackerWithTrackerToken: @"uevt4h"];
    
    // Optional
    [MetrixClient setOnAttributionChangedListener:^(AttributionData *data) {
        printf("\n[Metrix Sample App]: AttributionStatus: %s\n", [[data attributionStatusRaw] UTF8String]);
    }];

    // Optional
    [MetrixClient setUserIdListener:^(NSString *userId) {
        printf("\n[Metrix Sample App]: UserId: %s\n", [userId UTF8String]);
    }];

    // Optional
    [MetrixClient setStoreWithStoreName:@"App Store"];

    // Optional
    [MetrixClient setAppSecretWithSecretId:1 info1:429751687 info2:1057026454 info3:796046595 info4:610423971];
    
    // Optional
    [MetrixClient setSessionIdListener:^(NSString *sessionId) {
        printf("\n[Metrix Sample App]: SessionId: %s\n", [sessionId UTF8String]);
    }];
    
    // Optional
    [MetrixClient setSessionNumberListener:^(NSInteger num) {
        printf("\n[Metrix Sample App]: Session Number: %d\n", (int)num);
    }];
    
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

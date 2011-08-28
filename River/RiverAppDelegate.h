//
//  RiverAppDelegate.h
//  River
//
//  Created by  Chuns on 11-8-28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RiverAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end

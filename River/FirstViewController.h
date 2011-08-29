//
//  FirstViewController.h
//  River
//
//  Created by  Chuns on 11-8-28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController 
    <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *listData;
    
    NSDictionary *names;
    NSArray *keys;
}

@property (nonatomic, retain) NSArray *listData;

@property (nonatomic, retain) NSDictionary *names;
@property (nonatomic, retain) NSArray *keys;

@end

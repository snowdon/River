//
//  SecondViewController.h
//  River
//
//  Created by  Chuns on 11-8-28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArtistDetailViewController.h"
@class ArtistDetailViewController;

@interface SecondViewController : UIViewController
    <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *listArt;
    
    NSDictionary *name;
    NSArray *keys;
    
    ArtistDetailViewController *advController;
}

@property (nonatomic, retain) NSArray *listArt;

@property (nonatomic, retain) NSDictionary *names;
@property (nonatomic, retain) NSArray *keys;

@property (nonatomic, retain) ArtistDetailViewController *advController;

@end
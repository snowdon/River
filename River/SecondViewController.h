//
//  SecondViewController.h
//  River
//
//  Created by  Chuns on 11-8-28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondViewController : UIViewController
    <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *listArt;
}

@property (nonatomic, retain) NSArray *listArt;
@end
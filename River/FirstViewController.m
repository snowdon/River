//
//  FirstViewController.m
//  River
//
//  Created by  Chuns on 11-8-28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController
@synthesize listData;
@synthesize names;
@synthesize keys;



- (void)viewDidLoad
{
 //   NSArray *array = [[NSArray alloc] initWithObjects:@"日本  9:00 ", @"美国", @"德国", @"意大利",
 //                     @"英国",@"日本", @"美国", @"德国",@"日本", @"美国", @"德国",                      nil];
 //   self.listData = array;
   
    NSString *path = [[NSBundle mainBundle] pathForResource:@"lineup"
                                                     ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    self.names = dict;
    
    [dict release];
    NSArray *array = [[names allKeys] sortedArrayUsingSelector:@selector(compare:)];
    self.keys = array ;
    
    //[array release];
    [super viewDidLoad];
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload
{
    self.listData = nil;
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    self.names = nil;
    self.keys = nil;
}


- (void)dealloc
{
    [listData release];
    [names release];
    [keys release];
    [super dealloc];
}

#pragma mark -
#pragma mark Table View Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    return [self.listData count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableidentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                       SimpleTableidentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleValue1
                 reuseIdentifier:SimpleTableidentifier] autorelease];
        
    }
    
    if(indexPath.row == 0)
    {
        cell.image = [UIImage imageNamed:@"avator1.png"];
    }
    
    else if (indexPath.row == 1)
    {
        cell.image = [UIImage imageNamed:@"avator2.png"];
    }
    
    else if(indexPath.row == 2)
    {
        cell.image = [UIImage imageNamed:@"avator3.png"];
    }
    
    else if (indexPath.row == 3)
    {
        cell.image = [UIImage imageNamed:@"avator4.png"];
    }
    
    else if(indexPath.row == 4)
    {
        cell.image = [UIImage imageNamed:@"avator5.png"];
    }
    
    else if (indexPath.row == 5)
    {
        cell.image = [UIImage imageNamed:@"avator6.png"];
    }
    
    
    else if(indexPath.row == 6)
    {
        cell.image = [UIImage imageNamed:@"avator7.png"];
    }
    
    else if (indexPath.row == 7)
    {
        cell.image = [UIImage imageNamed:@"avator8.png"];
    }
    
    else if(indexPath.row == 8)
    {
        cell.image = [UIImage imageNamed:@"avator9.png"];
    }
    
    else if (indexPath.row == 5)
    {
        cell.image = [UIImage imageNamed:@"avator6.png"];
    }
    
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    
    if (row < 7)
        cell.detailTextLabel.text = @"Chun";
    
    else
        cell.detailTextLabel.text = @"Dong";
    
    return cell;
    
}


- (NSIndexPath *)tableView:(UITableView *) tableView
  willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    NSString *rowValue = [listData objectAtIndex:row];
    
    NSString *message = [[NSString alloc] initWithFormat:@"you select %@", rowValue];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Row selected!"
                                                    message:message
                                                   delegate:nil 
                                          cancelButtonTitle:@"Yes I Did"
                                          otherButtonTitles:nil];
    [alert show];
    
    [message release];
    [alert release];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end

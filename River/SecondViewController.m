//
//  SecondViewController.m
//  River
//
//  Created by  Chuns on 11-8-28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController
@synthesize listArt;

- (void)viewDidLoad
{
    NSArray *array = [[NSArray alloc] initWithObjects:@"李", @"王", @"张", @"谢",
                      @"英",@"", @"国", @"司",@"济", @"美", @"德",
                      nil];
    self.listArt = array;
    [array release];
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
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
}

#pragma mark -
#pragma mark Table View Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    return [self.listArt count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableidentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableidentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault
                 reuseIdentifier:SimpleTableidentifier] autorelease];
        
    }
    
 //   UIImage *image = [UIImage imageNamed:@"avator1.png"];
 //   cell.imageView.image = image;
    
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
    cell.textLabel.text = [listArt objectAtIndex:row];
    return cell;
    
}


@end

//
//  SecondViewController.m
//  River
//
//  Created by  Chuns on 11-8-28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "ArtistDetailViewController.h"

@implementation SecondViewController
@class ArtistDetailViewController;

@synthesize listArt;

@synthesize names;
@synthesize keys;
@synthesize advController;

/*
- (void)viewDidLoad
{
    NSArray *array = [[NSArray alloc] initWithObjects:@"李     12:00 ", @"王", @"张", @"谢",
                      @"英",@"", @"国", @"司",@"济", @"美", @"德",
                      nil];
    self.listArt = array;
    [array release];
    [super viewDidLoad];
}
*/

- (void)viewDidLoad {
    
 //   SecondViewController *secondViewController = [[SecondViewController alloc] init];
    
    
 //   UINavigationController *navController = [[UINavigationController alloc]
//                                             initWithRootViewController:secondViewController];
    
    
 //   [secondViewController release];
    
   // [[self window] setRootViewController:navController];
    
//    [self.window makeKeyAndVisible];
    
  //  return YES;
    
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"artistlist"
                                                    ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    self.names = dict;
    [dict release];
    
    NSArray *array = [[names allKeys] sortedArrayUsingSelector:
                      @selector(compare:)];
    self.keys = array;
    
    
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
    self.names = nil;
    self.keys = nil;
    [super viewDidUnload];

    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [names release];
    [keys release];
    [super dealloc];
}

#pragma mark -
#pragma mark Table View Data Source Methods

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView 
{
    return [keys count];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    return [nameSection count];
    
}


/*

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableidentifier = @"SimpleTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SimpleTableidentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleSubtitle
                 reuseIdentifier:SimpleTableidentifier] autorelease];
        
    }
    
 //   UIImage *image = [UIImage imageNamed:@"avator1.png"];
 //   cell.imageView.image = image;
    
    
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listArt objectAtIndex:row];
    
    if (row < 7)
        cell.detailTextLabel.text = @"Chun";
    
    else
        cell.detailTextLabel.text = @"Dong";
    
    return cell;
    
}

*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    
    static NSString *SectionsTableIdentifier = @"SectionsTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SectionsTableIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault
                 reuseIdentifier:SectionsTableIdentifier] autorelease];
        
    }
    
    
    cell.textLabel.text = [nameSection objectAtIndex:row];
    
  
    return cell;
    
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *key = [keys objectAtIndex:section];
    return key;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return keys;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ArtistDetailViewController *advController = [[[ArtistDetailViewController alloc]
                                           init ] autorelease];
  //  advController.artists = [self.arts objectAtIndex:indexPath.row];
    NSLog(@"hello,kitty");
    [[self navigationController] pushViewController:advController 
                                           animated:YES];
}


/*
#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
	
    TipDetailViewController *tipDetailViewController = [[TipDetailViewController alloc] initWithNibName:@"TipDetailViewController" bundle:nil];
    tipDetailViewController.tip = [self.tips objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:tipDetailViewController animated:YES];
    [tipDetailViewController release];
    
}
 */


@end

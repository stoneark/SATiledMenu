//
//  MainViewController.m
//  SATiledMenuDemo
//
//  Created by StoneArk on 14-3-13.
//  Copyright (c) 2014 StoneArk. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining
//  a copy of this software and associated documentation files (the
//  "Software"), to deal in the Software without restriction, including
//  without limitation the rights to use, copy, modify, merge, publish,
//  distribute, sublicense, and/or sell copies of the Software, and to
//  permit persons to whom the Software is furnished to do so, subject to
//  the following conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
//  LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
//  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "MainViewController.h"
#import "SATiledMenu.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    SATiledMenu *menu = [[SATiledMenu alloc]initWithInvokeViewController:self];
    [menu setCapacityHorizen:4];
    [menu setCapacityVertical:4];
    [menu setMenuItemImgWidth:60];
    [menu setMenuItemImgHeight:60];
    [menu setMenuItemLblHeight:20];
    [menu setSpaceHorizen:10];
    [menu setSpaceVertical:10];
    [menu setFontTitle:[UIFont fontWithName:@"STHeitiSC-Medium" size:14.0]];
    
    [menu addMenuItemWithImageName:@"menu1.png" labelText:@"Item 1" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu2.png" labelText:@"Item 2" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu3.png" labelText:@"Item 3" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu4.png" labelText:@"Item 4" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu1.png" labelText:@"Item 5" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu2.png" labelText:@"Item 6" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu3.png" labelText:@"Item 7" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu4.png" labelText:@"Item 8" tapEvent:@selector(tapItem:)];
    [menu addMenuItemWithImageName:@"menu1.png" labelText:@"Item 9" tapEvent:@selector(tapItem:)];
    
    menu.frame = CGRectMake(20, 20, 320, 400);
    [self.view addSubview:menu];
}

- (void)tapItem:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Tap" message:@"Tap Menu Item" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

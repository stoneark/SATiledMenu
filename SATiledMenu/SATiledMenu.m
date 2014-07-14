//
//  SATiledMenu.m
//  SATiledMenu
//
//  Created by StoneArk on 13-8-26.
//  Copyright (c) 2013 StoneArk. All rights reserved.
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

#import "SATiledMenu.h"

#define MENUITEMHEIGHT (menuItemImgHeight + menuItemLblHeight + spaceVertical)
#define MENUITEMWIDTH (menuItemImgWidth + spaceHorizen)

@implementation SATiledMenu

@synthesize menuItemImgWidth, menuItemImgHeight, menuItemLblHeight;
@synthesize capacityHorizen, capacityVertical;
@synthesize spaceHorizen, spaceVertical;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)init
{
    if (self = [super init])
    {
        arrMenuItem = [NSMutableArray arrayWithCapacity:30];
    }
    return self;
}

- (id)initWithInvokeViewController:(UIViewController*)invokeViewController
{
    if (self = [super init])
    {
        arrMenuItem = [NSMutableArray arrayWithCapacity:30];
        self.invokeViewController = invokeViewController;
    }
    return self;
}

- (void)addMenuItemWithImageName:(NSString*)imgName labelText:(NSString*)lblText tapEvent:(SEL)event
{
    SATiledMenuItem *item=[[SATiledMenuItem alloc]initWithImage:imgName labelText:lblText imgWidth:menuItemImgWidth imgHeight:menuItemImgHeight LblHeight:menuItemLblHeight];
    item.frame = CGRectMake(arrMenuItem.count % capacityHorizen * MENUITEMWIDTH, arrMenuItem.count / capacityHorizen * MENUITEMHEIGHT, MENUITEMWIDTH, MENUITEMHEIGHT);
    [item setTitleFont:_fontTitle];
    [self addSubview:item];
    [arrMenuItem addObject:item];
    
    if (event != nil)
        [item bindSelector:event];
}

- (void)dealloc
{
#if(!__has_feature(objc_arc))
    [arrMenuItem release];
    [_fontTitle release];
#endif
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

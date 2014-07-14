//
//  SATiledMenuItem.m
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

#import "SATiledMenuItem.h"
#import "SATiledMenu.h"
@implementation SATiledMenuItem

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithImage:(NSString*)imgName labelText:(NSString*)lblText imgWidth:(int)imgWidth imgHeight:(int)imgHeight LblHeight:(int)lblHeight
{
    if (self = [super init])
    {
        btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
        [btnImage setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
        
        lblTitle = [[UILabel alloc]init];
        lblTitle.text = lblText;
        btnImage.frame = CGRectMake(0, 0, imgWidth, imgHeight);
        lblTitle.frame = CGRectMake(0, imgHeight, imgWidth, lblHeight);
        lblTitle.textAlignment = NSTextAlignmentCenter;
        [self addSubview:btnImage];
        [self addSubview:lblTitle];
    }
    return self;
}

- (void)setTitleFont:(UIFont*)font
{
    lblTitle.font = font;
}

- (void)bindSelector:(SEL)selector
{
    [btnImage addTarget:_parentMenu.invokeViewController action:selector forControlEvents:UIControlEventTouchUpInside];
}

- (void)dealloc
{
#if(!__has_feature(objc_arc))
    [btnImage release];
    [lblTitle release];
    [super dealloc];
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

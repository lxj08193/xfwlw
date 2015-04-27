//
//  HomeView.h
//  ShowProduct
//
//  Created by lin on 14-5-22.
//  Copyright (c) 2014年 @"". All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuHrizontal.h"
#import "ScrollPageView.h"

#import "TestViewController.h"

@interface HomeView : UIView<MenuHrizontalDelegate,ScrollPageViewDelegate>
{
    MenuHrizontal *mMenuHriZontal;
    ScrollPageView *mScrollPageView;
}
- (id)initWithFrame:(CGRect)frame buuts:(NSArray*)bausss  ccc:(NSMutableArray*)contss;
@property (nonatomic,retain)NSMutableArray *conts;
@property (nonatomic,retain)NSArray *vButtonItemArray;
@end

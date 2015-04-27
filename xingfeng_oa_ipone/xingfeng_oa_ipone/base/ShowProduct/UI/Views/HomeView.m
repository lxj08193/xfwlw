//
//  HomeView.m
//  ShowProduct
//
//  Created by lin on 14-5-22.
//  Copyright (c) 2014年 @"". All rights reserved.
//

#import "HomeView.h"
#import "HomeViewCell.h"


#define MENUHEIHT 62

@implementation HomeView
@synthesize conts,vButtonItemArray;
- (id)initWithFrame:(CGRect)frame buuts:(NSArray*)bausss  ccc:(NSMutableArray*)contss
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        conts=contss;
        vButtonItemArray=bausss;
        [self commInit];
        
    }
    return self;
}

#pragma mark UI初始化
-(void)commInit{
    
    
    if (mMenuHriZontal == nil) {
        //mMenuHriZontal = [[MenuHrizontal alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, MENUHEIHT) ButtonItems:vButtonItemArray];
        mMenuHriZontal = [[MenuHrizontal alloc] initWithFrame:CGRectMake(0, self.frame.size.height - MENUHEIHT, self.frame.size.width, MENUHEIHT) ButtonItems:vButtonItemArray];
        mMenuHriZontal.delegate = self;
        [mMenuHriZontal setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"main_bar_bg_new1.png"]]];
        
    }
    //初始化滑动列表
    if (mScrollPageView == nil) {
        mScrollPageView = [[ScrollPageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - MENUHEIHT)];
        mScrollPageView.delegate = self;
        mScrollPageView.userInteractionEnabled=true;
    }
    
    mScrollPageView.conts=conts;
    
    [mScrollPageView setContentOfTables:vButtonItemArray.count];
    //默认选中第一个button
    [mMenuHriZontal clickButtonAtIndex:0];
    //-------
    [self addSubview:mScrollPageView];
    [self addSubview:mMenuHriZontal];
}

#pragma mark 内存相关
-(void)dealloc{
    [mMenuHriZontal release],mMenuHriZontal = nil;
    [mScrollPageView release],mScrollPageView = nil;
    [super dealloc];
}

#pragma mark - 其他辅助功能
#pragma mark MenuHrizontalDelegate
-(void)didMenuHrizontalClickedButtonAtIndex:(NSInteger)aIndex{
    NSLog(@"第%d个Button点击了",aIndex);
    [mScrollPageView moveScrollowViewAthIndex:aIndex];
}

#pragma mark ScrollPageViewDelegate
-(void)didScrollPageViewChangedPage:(NSInteger)aPage{
    NSLog(@"CurrentPage:%d",aPage);
    [mMenuHriZontal changeButtonStateAtIndex:aPage];
//    if (aPage == 3) {
        //刷新当页数据
        [mScrollPageView freshContentTableAtIndex:aPage];
//    }
}


@end

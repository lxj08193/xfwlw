//
//  MainViewController.m
//  xingfeng_oa_ipone
//
//  Created by zhengjiang on 14-6-28.
//  Copyright (c) 2014年 zhengjiang. All rights reserved.
//

#import "MainViewController.h"
#import "HomeView.h"
#import "Macros.h"

@interface MainViewController (){
　　HomeView *mHomeView;
}
@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil) {
        [self initCommonData];
        [self initTopNavBar];
    }
    return self;
}
//主要用来方向改变后重新改变布局
- (void) setLayout: (BOOL) aPortait {
    
    [self setViewFrame];
}
//初始化数据
-(void)initCommonData{
    
}
//重载导航条
-(void)initTopNavBar{
    self.title = @"我的新闻客户端";
    self.navigationItem.leftBarButtonItem = Nil;
}
-(void)viewDidLoad{
    [self initView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// 初始View
- (void) initView {
    
    if (IS_IOS7) {
        self.edgesForExtendedLayout =UIRectEdgeNone ;
    }
    
    NSArray *vButtonItemArray = @[@{NOMALKEY: @"foot_bar_1.png",
                                    HEIGHTKEY:@"foot_bar_11.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"foot_bar_2.png",
                                    HEIGHTKEY:@"foot_bar_22.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"foot_bar_3.png",
                                    HEIGHTKEY:@"foot_bar_33.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"foot_bar_4.png",
                                    HEIGHTKEY:@"foot_bar_44.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"foot_bar_5.png",
                                    HEIGHTKEY:@"foot_bar_55.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"foot_bar_6.png",
                                    HEIGHTKEY:@"foot_bar_66.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:80]
                                    },
                                  @{NOMALKEY: @"foot_bar_7.png",
                                    HEIGHTKEY:@"foot_bar_77.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"foot_bar_8.png",
                                    HEIGHTKEY:@"foot_bar_88.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                  @{NOMALKEY: @"foot_bar_9.png",
                                    HEIGHTKEY:@"foot_bar_99.png",
                                    TITLEKEY:@"",
                                    TITLEWIDTH:[NSNumber numberWithFloat:60]
                                    },
                                      @{NOMALKEY: @"foot_bar_10.png",
                                        HEIGHTKEY:@"foot_bar_100.png",
                                        TITLEKEY:@"",
                                        TITLEWIDTH:[NSNumber numberWithFloat:60]
                                        }
                                  ];
    NSMutableArray *conts=[[NSMutableArray alloc]initWithCapacity:0];
    for(int i=0;i<[vButtonItemArray count];i++){
        UIViewController *controller;
        switch (i) {
            case 0:
                controller=[[IndexViewController alloc]initWithNibName:@"IndexViewController" bundle:nil];
                [conts addObject:controller];
                break;
            case 1:
                controller=[[CustomerController alloc]initWithNibName:@"CustomerController" bundle:nil];
                [conts addObject:controller];
                break;
            case 2:
                controller=[[ProductController alloc]initWithNibName:@"ProductController" bundle:nil];
                [conts addObject:controller];
                break;
            case 3:
                controller=[[AddressController alloc]initWithNibName:@"AddressController" bundle:nil];
                [conts addObject:controller];
                break;
            case 4:
                controller=[[MessagingController alloc]initWithNibName:@"MessagingController" bundle:nil];
                [conts addObject:controller];
                break;
            case 5:
                controller=[[IndexViewController alloc]initWithNibName:@"IndexViewController" bundle:nil];
                [conts addObject:controller];
                break;
            case 6:
                controller=[[IndexViewController alloc]initWithNibName:@"IndexViewController" bundle:nil];
                [conts addObject:controller];
                break;
            case 7:
                controller=[[IndexViewController alloc]initWithNibName:@"IndexViewController" bundle:nil];
                [conts addObject:controller];
                break;
            case 9:
                controller=[[IndexViewController alloc]initWithNibName:@"IndexViewController" bundle:nil];
                [conts addObject:controller];
                break;
                
            default:
                break;
        }
        
       
    }
    
    //contentView大小设置
    int vWidth = (int)([UIScreen mainScreen].bounds.size.width);
    int vHeight = (int)([UIScreen mainScreen].bounds.size.height);
    //contentView大小设置
    
    CGRect vViewRect = CGRectMake(0, 0, vWidth, /*vHeight -44 -20*/vHeight);
    UIView *vContentView = [[UIView alloc] initWithFrame:vViewRect];
    if (mHomeView == nil) {
        mHomeView = [[HomeView alloc] initWithFrame:vContentView.frame  buuts:vButtonItemArray ccc:conts];
    }
    [vContentView addSubview:mHomeView];
    
    self.view = vContentView;
    
    [self setViewFrame];
}

//设置View方向
-(void) setViewFrame{
    
}
@end

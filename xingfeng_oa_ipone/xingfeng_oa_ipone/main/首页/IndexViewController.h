//
//  IndexViewController.h
//  xingfeng_oa_ipone
//
//  Created by zhengjiang on 14-6-28.
//  Copyright (c) 2014年 zhengjiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SVProgressHUD.h"

@interface IndexViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>


@property(strong)IBOutlet UITableView *myTableView;
-(IBAction)toRigthAction:(id)sender;

-(IBAction)testAction:(id)sender;

@end

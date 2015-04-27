//
//  IndexViewController.m
//  xingfeng_oa_ipone
//
//  Created by zhengjiang on 14-6-28.
//  Copyright (c) 2014年 zhengjiang. All rights reserved.
//

#import "IndexViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController
@synthesize myTableView;


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
    
    self.myTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)toRigthAction:(id)sender{
    [SVProgressHUD showSuccessWithStatus:@"右"];
    NSLog(@"33333");
   

}
-(IBAction)testAction:(id)sender{

 NSLog(@"444");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
        NSString *imageName;
        NSString *name;
        switch (indexPath.row) {
            case 0:
                imageName=@"main_index_1.png";
                name=@"即时通讯";
                break;
            case 1:
                imageName=@"main_index_2.png";
                name=@"通讯录";
                break;
            case 2:
                imageName=@"main_index_3.png";
                name=@"工作日报";
                break;
            case 3:
                imageName=@"main_index_4.png";
                name=@"会议管理";
                break;
            default:
                break;
        }
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//箭头
        cell.imageView.image =[UIImage imageNamed:imageName];
        cell.textLabel.text=name;
    }
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect frame = [tableView frame];
    return  frame.size.height/4;
}


@end

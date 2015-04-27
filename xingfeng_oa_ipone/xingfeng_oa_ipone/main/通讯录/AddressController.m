//
//  IndexViewController.m
//  xingfeng_oa_ipone
//
//  Created by zhengjiang on 14-6-28.
//  Copyright (c) 2014年 zhengjiang. All rights reserved.
//

#import "AddressController.h"

@interface AddressController ()

@end

@implementation AddressController
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
    
    UIAlertView*alert = [[UIAlertView alloc]initWithTitle:@"客户选择"
                                                  message:@""
                                                 delegate:nil
                                        cancelButtonTitle:@"取消"
                                        otherButtonTitles:@"自定义",@"通讯录",nil];
    [alert show];

}
-(IBAction)testAction:(id)sender{

 NSLog(@"444");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
        NSString *imageName=@"headdefult.jpg";
        NSString *name=[NSString stringWithFormat:@"李兴建%d",indexPath.row];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//箭头
        cell.imageView.image =[UIImage imageNamed:imageName];
        cell.textLabel.text=name;
        
        /*
        UIButton *Button = [UIButton buttonWithType:UIButtonTypeCustom];
        Button.frame = CGRectMake(0, 320-60, 44, 44);
        [Button setImage:[UIImage imageNamed:@"DHimage.png"] forState:UIControlStateNormal];
        [cell addSubview:Button];
         */
        
        //[Button addTarget:self action:@selector(btnClicked:event:)  forControlEvents:UIControlEventTouchUpInside];
    }
    
    
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return [NSString stringWithFormat:@"技术部%d",section+1];
}

@end

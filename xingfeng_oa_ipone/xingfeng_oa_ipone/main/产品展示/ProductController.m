//
//  IndexViewController.m
//  xingfeng_oa_ipone
//
//  Created by zhengjiang on 14-6-28.
//  Copyright (c) 2014年 zhengjiang. All rights reserved.
//

#import "ProductController.h"

@interface ProductController ()

@end

@implementation ProductController
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
    
}
-(IBAction)testAction:(id)sender{

 NSLog(@"444");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
        
        NSString *name=[NSString stringWithFormat:@"%d分类产品%d",indexPath.section, indexPath.row];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//箭头
        //cell.imageView.image =[UIImage imageNamed:imageName];
       // cell.textLabel.text=name;
        cell.detailTextLabel.text=name;
    }
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return [NSString stringWithFormat:@"分类%d",section+1];
}

@end

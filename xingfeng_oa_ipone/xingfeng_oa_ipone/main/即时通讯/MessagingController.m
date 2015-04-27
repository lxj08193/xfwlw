//
//  IndexViewController.m
//  xingfeng_oa_ipone
//
//  Created by zhengjiang on 14-6-28.
//  Copyright (c) 2014年 zhengjiang. All rights reserved.
//

#import "MessagingController.h"

@interface MessagingController ()

@end

@implementation MessagingController
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
    return 3;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
        NSString *imageName=@"headdefult.jpg";
        NSString *name=[NSString stringWithFormat:@"%d李兴建",indexPath.row];
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//箭头
        cell.imageView.image =[UIImage imageNamed:imageName];
        cell.textLabel.text=name;
        cell.detailTextLabel.text=@"你不爱我我不爱你,我不爱你你不爱我";
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
    
    return [NSString stringWithFormat:@"2014年6月%d日",section+1];
}

@end

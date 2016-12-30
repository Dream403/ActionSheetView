//
//  ViewController.m
//  ActionSheetViewDemo
//
//  Created by 小虾米 on 2016/12/30.
//  Copyright © 2016年 小虾米. All rights reserved.
//

#import "ViewController.h"
#import "ZLActionSheetView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame  =  CGRectMake(30, 40, 40, 40);
    
    button.backgroundColor  = [UIColor redColor];
    
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

-(void)click:(UIButton *)bt{
    
  
    ZLActionSheetView *sheetView = [[ZLActionSheetView alloc] initWithDelegate:nil title:@"提示" CancelTitle:@"取消" OtherTitles:@"测试1",@"测试2",@"测试3", nil];
    
    [sheetView showWithClickBlock:^(ZLActionSheetView *sheetView, NSInteger index) {
       
        NSLog(@"%ld",index);
    }];
    
    [sheetView setCancelTextColor:[UIColor redColor]];
    
    [sheetView setTitleTextColor:[UIColor greenColor]];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

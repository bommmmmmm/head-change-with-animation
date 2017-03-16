//
//  rootViewController.m
//  hsabi
//
//  Created by liuping on 2017/3/16.
//  Copyright © 2017年 刘平. All rights reserved.
//

#import "rootViewController.h"
#import "TopSlideView.h"
@interface rootViewController ()

@end

@implementation rootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TopSlideView *view = [[TopSlideView alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 60)];
    [view ChoseColor:[UIColor redColor] notChoseColor:[UIColor blueColor] lineColor:[UIColor grayColor] choseLineColor:[UIColor orangeColor] linewidth:2 firstButtonTittle:@"推荐模型" secondButtonTittle:@"我的模型" buttonWidth:100];

//    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

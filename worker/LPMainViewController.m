//
//  LPMainViewController.m
//  worker
//
//  Created by 李鹏飞 on 2018/2/12.
//  Copyright © 2018年 hoomsun. All rights reserved.
//

#import "LPMainViewController.h"
#import "HSInterface+User.h"
#import "LPFfirstViewController.h"
@interface LPMainViewController ()

@end

@implementation LPMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"helloworld,我是李鹏飞");
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *sureButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, 100, 30)];
    sureButton.backgroundColor = [UIColor redColor];
    [sureButton addTarget:self action:@selector(clickSureButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sureButton];
    
    
    [HSInterface loginWithUserName:@"xjzhang" Password:@"123456" completion:^(BOOL success, NSInteger errorCode, NSString *message, HSUser *model) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (success) {
                NSLog(@"我这里登录成功了");
            }else {
                [SVProgressHUD showInfoWithStatus:message];
            }
        });
    }];
    
    // Do any additional setup after loading the view.
}

-(void)clickSureButton:(UIButton *)sender {
    LPFfirstViewController *firstVC = [[LPFfirstViewController alloc]init];
    [self presentViewController:firstVC animated:YES completion:nil];
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

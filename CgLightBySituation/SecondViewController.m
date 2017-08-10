//
//  SecondViewController.m
//  CgLightBySituation
//
//  Created by mac on 2017/8/10.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "SecondViewController.h"
#import "JCBrightness.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSUserDefaults standardUserDefaults] setObject:@YES forKey:@"ifNeedChangeLight"];

    [self.backButton addTarget:self action:@selector(turnBack) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [JCBrightness graduallySetBrightness:1.0];
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"ifNeedChangeLight"];
    [JCBrightness graduallyResumeBrightness];
}

- (void)turnBack{
    [self dismissViewControllerAnimated:YES completion:nil];
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

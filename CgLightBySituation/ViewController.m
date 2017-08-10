//
//  ViewController.m
//  CgLightBySituation
//
//  Created by mac on 2017/8/10.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "JCBrightness.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *jumpButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.jumpButton addTarget:self action:@selector(turnToNext) forControlEvents:UIControlEventTouchUpInside];
}

- (void)turnToNext{
    SecondViewController * secondViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"second"];
    [self presentViewController:secondViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

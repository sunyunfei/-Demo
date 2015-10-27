//
//  ViewController.m
//  按钮自定义效果Demo
//
//  Created by 孙云 on 15/10/27.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "ViewController.h"
#import "AutoButton.h"
#import "SecAutoButton.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet AutoButton *btn;
@property (weak, nonatomic) IBOutlet SecAutoButton *secBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.btn setImage:[UIImage imageNamed:@"share.jpg"]
              forState:UIControlStateNormal];
    self.btn.layer.cornerRadius = 20;
    self.btn.layer.masksToBounds = YES;
    
    [self.secBtn setImage:[UIImage imageNamed:@"share.jpg"]
                 forState:UIControlStateNormal];
    self.secBtn.layer.cornerRadius = 30;
    self.secBtn.layer.masksToBounds = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  keyboardDEMO
//
//  Created by 梁粱展焯 on 16/4/17.
//  Copyright © 2016年 梁粱展焯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300)];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    [button setTitle:@"1" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [view addSubview:button];
    
    
    [button addTarget:self action:@selector(touchAction) forControlEvents:UIControlEventTouchUpInside];
    
    _textField.inputView = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchAction{
    NSLog(@"1");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_textField resignFirstResponder];
}


@end

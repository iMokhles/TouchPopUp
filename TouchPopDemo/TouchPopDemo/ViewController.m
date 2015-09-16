//
//  ViewController.m
//  TouchPopDemo
//
//  Created by Mokhlas Hussein on 16/09/15.
//  Copyright © 2015 iMokhles. All rights reserved.
//

#import "ViewController.h"
#import "TouchPopUp.h"

@interface ViewController () {
    NSURL *mainURL;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    mainURL = [NSURL URLWithString:@"http://imokhles.com/"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)openLink:(UIButton *)sender {
    [TouchPopUp presentInViewController:self fromView:sender withDirection:UIPopoverArrowDirectionDown forURL:mainURL];
}
@end

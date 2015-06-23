//
//  ViewController.m
//  MBTextField
//
//  Created by Perry on 15/6/23.
//  Copyright (c) 2015年 MmoaaY. All rights reserved.
//

#import "ViewController.h"
#import "MTextField.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MTextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initTextField];
}

- (void)initTextField {
    [self.textField setInactiveImageWithName:@"accounttextfieldiconinactive"];
    [self.textField setActiveImageWithName:@"accounttextfieldicon"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}

@end

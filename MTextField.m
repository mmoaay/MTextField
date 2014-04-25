//
//  MTextField.m
//
//  Created by Zhengyidong(mrzhengyidong@sina.com) on 13-12-11.
//

#import "MTextField.h"

@implementation MTextField

@synthesize activeImage;
@synthesize inactiveImage;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addTarget:self action:@selector(beginEditText:) forControlEvents:UIControlEventEditingDidBegin];
        [self addTarget:self action:@selector(endEditText:) forControlEvents:UIControlEventEditingDidEnd];
        
        self.font = [UIFont systemFontOfSize:16];
        self.returnKeyType =UIReturnKeyDone;
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        self.backgroundColor = [UIColor whiteColor];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 2.0;
        self.layer.borderColor = UIColorFromRGB(0xff9900).CGColor;
        self.layer.borderWidth = 1;
    }
    return self;
}

-(void)setInactiveImage:(UIImage *)image
{
    inactiveImage = image;
    self.leftView = [[UIImageView alloc] initWithImage:inactiveImage];
    self.leftViewMode = UITextFieldViewModeAlways;
}

-(void)beginEditText:(UITextField *)textField
{
    self.leftView = [[UIImageView alloc] initWithImage:activeImage];
    self.leftViewMode = UITextFieldViewModeAlways;
}

-(void)endEditText:(UITextField *)textField
{
    self.leftView = [[UIImageView alloc] initWithImage:inactiveImage];
    self.leftViewMode = UITextFieldViewModeAlways;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

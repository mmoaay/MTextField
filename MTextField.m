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
    }
    return self;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    
    [self addTarget:self action:@selector(beginEditText:) forControlEvents:UIControlEventEditingDidBegin];
    [self addTarget:self action:@selector(endEditText:) forControlEvents:UIControlEventEditingDidEnd];
}

-(void)setInactiveImageWithName:(NSString *)imageName{
    inactiveImage = [UIImage imageNamed:imageName];
    self.leftView = [[UIImageView alloc] initWithImage:inactiveImage];
    self.leftViewMode = UITextFieldViewModeAlways;
}
-(void)setActiveImageWithName:(NSString *)imageName{
    activeImage = [UIImage imageNamed:imageName];
}

-(void)beginEditText:(UITextField *)textField
{
    if (!activeImage){
        NSLog(@"请调用setActiveImageWithName设置激活时编辑框左侧图片");
        return;
    }
    self.leftView = [[UIImageView alloc] initWithImage:activeImage];
    self.leftViewMode = UITextFieldViewModeAlways;
}

-(void)endEditText:(UITextField *)textField
{
    if (!inactiveImage){
        NSLog(@"请调用setInactiveImageWithName设置未激活时编辑框左侧图片");
        return;
    }
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

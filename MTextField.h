//
//  MTextField.h
//
//  Created by Zhengyidong(mrzhengyidong@sina.com) on 13-12-11.
//

#import <UIKit/UIKit.h>

@interface MTextField : UITextField<UITextFieldDelegate>

@property(nonatomic,strong)UIImage *activeImage;
@property(nonatomic,strong)UIImage *inactiveImage;

-(void)setInactiveImage:(UIImage *)image;

@end

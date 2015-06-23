//
//  MTextField.h
//
//  Created by Zhengyidong(mrzhengyidong@sina.com) on 13-12-11.
//

#import <UIKit/UIKit.h>

@interface MTextField : UITextField<UITextFieldDelegate>

@property(nonatomic,strong)UIImage *activeImage;
@property(nonatomic,strong)UIImage *inactiveImage;

// 设置激活和未激活时的图片
-(void)setInactiveImageWithName:(NSString *)imageName;
-(void)setActiveImageWithName:(NSString *)imageName;

@end

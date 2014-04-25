MTextField
==========

UITextField that have a different image in the left view when its state is active or inactive

使用方法：

MTextField *text = [[MTextField alloc] initWithFrame:CGRectMake(0, 0, 200, 45)];

text.placeholder = @"input example";

text.delegate = self;

[text setInactiveImage:[UIImage imageNamed:@"exampleiconinactive"]];

text.activeImage = [UIImage imageNamed:@"exampleicon"];

text.text = @"example";

[self.contentView addSubview:text];

MTextField
==========

可以设置获得焦点和失去焦点时左侧图片的UITextField

使用方法一（代码添加）：

MTextField *text = [[MTextField alloc] initWithFrame:CGRectMake(0, 0, 200, 45)];

text.placeholder = @"input example";

text.delegate = self;

[text setInactiveImageWithName:@"exampleiconinactive"];

[text setActiveImageWithName:@"exampleiconactive"];

text.text = @"example";

[self.view addSubview:text];

使用方法二（xib或者storyboard）

设置UITextField的class为MTextField，然后将控件关联到类的成员变量，然后调用如下代码即可：
[text setInactiveImageWithName:@"exampleiconinactive"];

[text setActiveImageWithName:@"exampleiconactive"];

//
//  ViewController.m
//  UIButton基础
//
//  Created by 李育腾 on 2022/5/27.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

// 创建普通按钮函数
-(void) crateUIButton {
//    // 创建一个btn对象 根据类型创建btn
//    // 圆角类型：UIButtonTypeRoundedRect
//    // 只能通过类方法来创建buttonWithType
//    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//
//    //设置button按钮
//    btn.frame = CGRectMake(100, 100, 100, 40);
//
//    //设置按钮内容
//    //@parameter
//    //p1:字符串类型，显示按钮文字
//    //p2：设置文字状态类型：UIControlStateNormal 正常状态
//
//    [btn setTitle:@"按钮1" forState:UIControlStateNormal];
//
//    //p2:显示文字状态类型 UIControlStateHighlighted 按下状态
//    [btn setTitle:@"按钮按下状态" forState:UIControlStateHighlighted];
//
//    //背景的大小是frame设置的
//    btn.backgroundColor = [UIColor grayColor];
//
//    //设置文字颜色---UIControlStateNormal 正常状态
//    // 两个参数p1 是颜色 p2是状态
//    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//
//    // 按下状态颜色
//    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
//
//    // 设置按钮风格颜色-优先级低一点 -不分状态
//    [btn setTintColor:[UIColor whiteColor]];
//
//    //设置字体大小
//    btn.titleLabel.font = [UIFont systemFontOfSize:24];
//
//    //添加到视图屏显示
//    [self.view addSubview:btn];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(50, 50, 60, 60);
        btn.backgroundColor = [UIColor redColor];
        //半径
        btn.layer.cornerRadius = 30;
        //裁边
        btn.layer.masksToBounds = YES;
        //边框宽度
        btn.layer.borderWidth = 3.0;
        //边框颜色
        btn.layer.borderColor = [UIColor yellowColor].CGColor;
        [self.view addSubview:btn];
        //想要实现圆形,需要将layer的cornerRadius大小设置为Button宽高的一半,前提width=height
}

//创建一个可以显示图片的按钮
-(void) crateImageBtn {
    //创建一个自定义类型button
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];

    btnImage.frame = CGRectMake(100, 200, 100, 100);

    UIImage* icon01 = [UIImage imageNamed:@"btn01.jpeg"];
    UIImage* icon02 = [UIImage imageNamed:@"btn02.jpeg"];

    //设置按钮图片的方法
    //p1 显 示图片对象
    //p2 控件状态
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];

    [self.view addSubview:btnImage];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //
    [self crateUIButton];
    [self crateImageBtn];
}


@end

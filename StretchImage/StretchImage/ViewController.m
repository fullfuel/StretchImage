//
//  ViewController.m
//  StretchImage
//
//  Created by baishiqi on 15/5/7.
//  Copyright (c) 2015年 baishiqi. All rights reserved.
//

#import "ViewController.h"
/*
 Deprecated
 
 - (UIImage *)stretchableImageWithLeftCapWidth:(NSInteger)leftCapWidth topCapHeight:(NSInteger)topCapHeight
 
 从图像的leftCapWidth右侧1点列开始复制拉伸，只复制该点列，图像其它部分不变
 从图像的topCapHeight下边1点行开始复制拉伸，只复制该点行，图像其它部分不变
 
 leftCapWidth:以点为单位
 topCapHeight:以点为单位
 
 */
#define LEFT_CAP_WIDTH  57
#define TOP_CAP_HEIGHT  8
#define IMAGE_NAME      @"ReceiverTextBg"

/*
 
 - (UIImage *)resizableImageWithCapInsets:(UIEdgeInsets)capInsets
 
 UIEdgeInsets结构为(top,left,bottom,right)，分别为距离图像上、左、下、右各边的距离，以点为单位，这样形成一个矩形区域，表示图像中将要被拉伸的区域
 
 */
#define CAP_INSETS      UIEdgeInsetsMake(30, 20, 20, 15)


@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *image = [UIImage imageNamed:IMAGE_NAME];
    
    UIImage *stretchImage = [image stretchableImageWithLeftCapWidth:LEFT_CAP_WIDTH topCapHeight:TOP_CAP_HEIGHT];
    self.imageView.image = stretchImage;
    
//    UIImage *resizeImage = [image resizableImageWithCapInsets:CAP_INSETS];
//    self.imageView.image = resizeImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end

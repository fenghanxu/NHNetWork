//
//  UIImage+FHXImage.m
//  day11网易彩票
//
//  Created by 冯汉栩 on 2018/9/3.
//  Copyright © 2018年 fenghanxu.compang.cn. All rights reserved.
//

#import "UIImage+FHXImage.h"

@implementation UIImage (FHXImage)

/**
 输入图片颜色返回一张图片
 */
+ (UIImage *)createImageWithColor:(UIColor *)color {
  CGRect rect = CGRectMake(0, 0, 1, 1);  //图片尺寸
  UIGraphicsBeginImageContext(rect.size); //填充画笔
  CGContextRef context = UIGraphicsGetCurrentContext(); //根据所传颜色绘制
  CGContextSetFillColorWithColor(context, color.CGColor);
  CGContextFillRect(context, rect); //联系显示区域
  UIImage * image = UIGraphicsGetImageFromCurrentImageContext(); // 得到图片信息
  UIGraphicsEndImageContext(); //消除画笔
  return image;  
}

/**
 裁切图片的一个点进行延伸
 */
- (UIImage *)stretchableImage {
  return  [self stretchableImageWithLeftCapWidth:self.size.width * 0.5 topCapHeight:self.size.height * 0.5];
}



@end





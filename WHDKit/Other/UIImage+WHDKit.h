//
//  UIImage+WHDKit.h
//  WHDKit
//
//  Created by HUN on 16/9/21.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WHDKit)


/**
 *  //根据设备不同返回不同尺寸图片
 */
+ (UIImage *)whd_imageMatchSizeWithName:(NSString *)imageName;

/**
 *  //拉伸图片
 */
+ (UIImage *)whd_compressImage:(UIImage *)imgSrc toSize:(CGSize)size;

/**
 *  //指定中间区域拉伸图片
 */
+ (UIImage *)whd_strechImageWithName:(NSString *)imageName;


/**
 *  //指定特定区域拉伸图片
 */
+ (UIImage *)whd_strechImageWithName:(NSString *)imageName posX:(CGFloat)x posY:(CGFloat)y;

/**
 *  自由拉伸一张图片
 *
 *  @param name 图片名字
 *  @param left 左边开始位置比例  值范围0-1
 *  @param top  上边开始位置比例  值范围0-1
 *
 *  @return 拉伸后的Image
 */
+ (UIImage *)whd_resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;



#pragma mark 功能
/**
 *  截图
 */
+ (UIImage *)whd_screenshot;

/**
 *  增加水印
 */
+ (UIImage *)whd_addImage:(UIImage *)image addMsakImage:(UIImage *)maskImage maskFrame:(CGRect)pos;

/**
 *  指定颜色生成图片
 */
+ (UIImage *)whd_imageWithColor:(UIColor *)color;



/**
 *  根据图片和颜色返回一张加深颜色以后的图片
 */
+ (UIImage *)whd_colorizeImage:(UIImage *)baseImage withColor:(UIColor *)theColor;


/**
 *  根据颜色和大小获取Image
 *
 *  @param color 颜色
 *  @param size  大小
 *
 */
+ (UIImage *)whd_imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  返回一个自定义尺寸的图片
 */
- (UIImage *)whd_cropImageWithSize:(CGSize)size;

/**
 *  根据图片返回一张高斯模糊的图片
 *
 *  @param blur 模糊系数
 *
 *  @return 新的图片
 */
- (UIImage *)whd_boxblurImageWithBlur:(CGFloat)blur;



@end

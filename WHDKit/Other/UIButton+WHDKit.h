//
//  UIButton+WHDKit.h
//  WHDKit
//
//  Created by HUN on 16/9/21.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (WHDKit)

/*!
 * 设置按钮正常状态下的图片
 */
- (void)whd_setNormalImageName:(NSString *)imageName;
- (void)whd_setNormalImage:(UIImage *)image;
- (void)whd_setNormalImageWithColor:(UIColor *)color;

/*!
 * 设置按钮Hightlighted状态下的图片
 */
- (void)whd_setHightlightedImageName:(NSString *)imageName;
- (void)whd_setHightlightedImage:(UIImage *)image;
- (void)whd_setHightlightedImageWithColor:(UIColor *)color;

/*!
 * 设置按钮Selected状态下的图片
 */
- (void)whd_setSelectedImageName:(NSString *)imageName;
- (void)whd_setSelectedImage:(UIImage *)image;
- (void)whd_setSelectedImageWithColor:(UIColor *)color;

/*!
 * 设置按钮状态下的图片
 */
- (void)whd_setNormal:(UIColor *)color hightlighted:(UIColor *)hgColor;
- (void)whd_setNormal:(UIColor *)color selected:(UIColor *)selColor;
- (void)whd_setNormal:(UIColor *)color hightlighted:(UIColor *)hgColor selected:(UIColor *)selColor;


@end

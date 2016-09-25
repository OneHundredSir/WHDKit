//
//  UIButton+WHDKit.m
//  WHDKit
//
//  Created by HUN on 16/9/21.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import "UIButton+WHDKit.h"
#import "UIColor+WHDKit.h"
@implementation UIButton (WHDKit)

/*!
 * 设置按钮正常状态下的图片
 */
- (void)whd_setNormalImageName:(NSString *)imageName {
    [self setImage:kImageWithName(imageName) forState:UIControlStateNormal];
}

- (void)whd_setNormalImage:(UIImage *)image {
    [self setImage:image forState:UIControlStateNormal];
}

- (void)whd_setNormalImageWithColor:(UIColor *)color {
    [self setImage:[UIColor imageWithColor:color size:self.frame.size] forState:UIControlStateNormal];
    
}

/*!
 * 设置按钮Hightlighted状态下的图片
 */
- (void)whd_setHightlightedImageName:(NSString *)imageName {
    [self setImage:kImageWithName(imageName) forState:UIControlStateHighlighted];
}

- (void)whd_setHightlightedImage:(UIImage *)image {
    [self setImage:image forState:UIControlStateHighlighted];
    
}

- (void)whd_setHightlightedImageWithColor:(UIColor *)color {
    [self setImage:[UIColor imageWithColor:color size:self.frame.size] forState:UIControlStateHighlighted];
}

/*!
 * 设置按钮Selected状态下的图片
 */
- (void)whd_setSelectedImageName:(NSString *)imageName {
    [self setImage:kImageWithName(imageName) forState:UIControlStateSelected];
}

- (void)whd_setSelectedImage:(UIImage *)image {
    [self setImage:image forState:UIControlStateSelected];
}

- (void)whd_setSelectedImageWithColor:(UIColor *)color {
    [self setImage:[UIColor imageWithColor:color size:self.frame.size] forState:UIControlStateSelected];
}

- (void)whd_setNormal:(UIColor *)color hightlighted:(UIColor *)hgColor {
    [self whd_setNormalImageWithColor:color];
    [self whd_setHightlightedImageWithColor:hgColor];
}

- (void)whd_setNormal:(UIColor *)color selected:(UIColor *)selColor {
    [self whd_setNormalImageWithColor:color];
    [self whd_setSelectedImageWithColor:selColor];
}

- (void)whd_setNormal:(UIColor *)color hightlighted:(UIColor *)hgColor selected:(UIColor *)selColor {
    [self whd_setNormal:color hightlighted:hgColor];
    [self whd_setSelectedImageWithColor:selColor];
    
}
UIImage* kImageWithName(NSString *imageName)
{
    return [UIImage imageNamed:imageName];
}



@end

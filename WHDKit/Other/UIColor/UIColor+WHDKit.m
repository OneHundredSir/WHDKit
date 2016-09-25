//
//  UIColor+WHDKit.m
//  WHDKit
//
//  Created by ZEUS on 16/9/18.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import "UIColor+WHDKit.h"

@implementation UIColor (WHDKit)

#define whdRandColor arc4random_uniform(255)/255.0
+(UIColor *)randonColor
{
    return [UIColor colorWithRed:whdRandColor green:whdRandColor blue:whdRandColor alpha:1];
}



+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}
@end

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
-(UIColor *)randonColor
{
    return [UIColor colorWithRed:whdRandColor green:whdRandColor blue:whdRandColor alpha:1];
}

@end

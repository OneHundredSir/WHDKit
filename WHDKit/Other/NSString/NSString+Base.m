//
//  NSString+WHDKit.m
//  WHDKit
//
//  Created by ZEUS on 16/9/18.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import "NSString+Base.h"

@implementation NSString (Base)


#pragma mark 基础功能
//对比两个字符串内容是否一致
- (BOOL) whd_equals:(NSString*) string
{
    return [self isEqualToString:string];
}

//判断字符串是否以指定的前缀开头
- (BOOL) whd_startsWith:(NSString*)prefix
{
    return [self hasPrefix:prefix];
}

//判断字符串是否以指定的后缀结束
- (BOOL) whd_endsWith:(NSString*)suffix
{
    return [self hasSuffix:suffix];
}

//转换成小写
- (NSString *) whd_toLowerCase
{
    return [self lowercaseString];
}

//转换成大写
- (NSString *) whd_toUpperCase
{
    return [self uppercaseString];
}

//截取字符串前后空格
- (NSString *) whd_trim
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

//用指定分隔符将字符串分割成数组
- (NSArray *) whd_split:(NSString*) separator
{
    return [self componentsSeparatedByString:separator];
}

//用指定字符串替换原字符串
- (NSString *) whd_replaceAll:(NSString*)oldStr with:(NSString*)newStr
{
    return [self stringByReplacingOccurrencesOfString:oldStr withString:newStr];
}

//从指定的开始位置和结束位置开始截取字符串
- (NSString *) whd_substringFromIndex:(int)begin toIndex:(int)end
{
    if (end <= begin) {
        return @"";
    }
    NSRange range = NSMakeRange(begin, end - begin);
    return [self substringWithRange:range];
}




@end

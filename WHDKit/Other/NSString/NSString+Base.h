//
//  NSString+WHDKit.h
//  WHDKit
//
//  Created by ZEUS on 16/9/18.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Base)

#pragma mark 基本数据处理
/**
 *  //对比两个字符串内容是否一致
 */
- (BOOL) whd_equals:(NSString*) string;

/**
 *  //判断字符串是否以指定的前缀开头
 */
- (BOOL) whd_startsWith:(NSString*)prefix;

/**
 *  //判断字符串是否以指定的后缀结束
 */
- (BOOL) whd_endsWith:(NSString*)suffix;

/**
 *  //转换成大写
 */
- (NSString *) whd_toLowerCase;

/**
 *  //转换成小写
 */
- (NSString *) whd_toUpperCase;

/**
 *  //截取字符串前后空格
 */
- (NSString *) whd_trim;

/**
 *  //用指定分隔符将字符串分割成数组
 */
- (NSArray *) whd_split:(NSString*) separator;

/**
 *  //用指定字符串替换原字符串
 */
- (NSString *) whd_replaceAll:(NSString*)oldStr with:(NSString*)newStr;

/**
 *  //从指定的开始位置和结束位置开始截取字符串
 */
- (NSString *) whd_substringFromIndex:(int)begin toIndex:(int)end;





@end

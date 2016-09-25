//
//  NSString+Code.h
//  WHDKit
//
//  Created by HUN on 16/9/22.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Code)
/**
 *  //Data类型转换为Base64
 */
+ (NSString *)base64StringFromData:(NSData *)data length:(NSUInteger)length;
@end

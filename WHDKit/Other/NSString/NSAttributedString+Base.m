//
//  NSAttributedString+Base.m
//  WHDKit
//
//  Created by HUN on 16/9/22.
//  Copyright © 2016年 hundred. All rights reserved.
//

#import "NSAttributedString+Base.h"
#import <CoreText/CoreText.h>
@implementation NSAttributedString (Base)

- (CGFloat)heightWithContainWidth:(CGFloat)width{
    int total_height = 0;
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)self);
    CGRect drawingRect = CGRectMake(0, 0, width, 100000);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, drawingRect);
    CTFrameRef textFrame = CTFramesetterCreateFrame(framesetter,CFRangeMake(0,0), path, NULL);
    CGPathRelease(path);
    CFRelease(framesetter);
    
    NSArray *linesArray = (NSArray *) CTFrameGetLines(textFrame);
    if(linesArray.count == 0)return 0;
    CGPoint origins[[linesArray count]];
    CTFrameGetLineOrigins(textFrame, CFRangeMake(0, 0), origins);
    int line_y = (int) origins[[linesArray count] -1].y;
    CGFloat ascent;
    CGFloat descent;
    CGFloat leading;
    CTLineRef line = (__bridge CTLineRef) [linesArray objectAtIndex:[linesArray count]-1];
    CTLineGetTypographicBounds(line, &ascent, &descent, &leading);
    
    total_height = 100000 - line_y + (int) descent +1;
    CFRelease(textFrame);
    return total_height;
}



+ (NSAttributedString *)attributeStringWithPrefixString:(NSString *)prefixString suffixString:(NSString *)suffixString {
    
    return [self attributeStringWithPrefixString:prefixString
                                      prefixFont:0
                                     prefixColor:0
                                    suffixString:suffixString
                                      suffixFont:0
                                     suffixColor:0];
}

+ (NSAttributedString *)attributeStringWithPrefixString:(NSString *)prefixString
                                             prefixFont:(CGFloat)prefixFont
                                            prefixColor:(UInt32)prefixColor
                                           suffixString:(NSString *)suffixString
                                             suffixFont:(CGFloat)suffixFont
                                            suffixColor:(UInt32)suffixColor{
    NSInteger prefixLength = prefixString.length;
    NSInteger suffixLength = suffixString.length;
    
    NSString *finalString = [NSString stringWithFormat:@"%@%@", prefixString, suffixString];
    
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:finalString];
    
    if (prefixFont==0 && prefixColor==0) {
        [attributedString addAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithHex:0x999999],
                                          NSFontAttributeName: [UIFont systemFontOfSize:10.0f]
                                          }
                                  range:NSMakeRange(0, prefixLength)];
        
        
    }else {
        [attributedString addAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithHex:prefixColor],
                                          NSFontAttributeName: [UIFont systemFontOfSize:prefixFont]
                                          }
                                  range:NSMakeRange(0, prefixLength)];
    }
    
    if (suffixFont==0 && suffixColor==0) {
        [attributedString addAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:10.0f],
                                          NSForegroundColorAttributeName: [UIColor colorWithHex:0xff786e]}
                                  range:NSMakeRange(prefixLength, suffixLength)];
    }else {
        
        
        [attributedString addAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:suffixFont],
                                          NSForegroundColorAttributeName: [UIColor colorWithHex:suffixColor]}
                                  range:NSMakeRange(prefixLength, suffixLength)];
    }
    
    
    return attributedString;
}

+ (NSMutableAttributedString *)attributeStringWithPrefixString:(NSString *)prefixString
                                              subffixImageName:(NSString *)subffixImageName
{
    
    NSString *string = prefixString;
    NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc] initWithString:string];
    
    UIImage *image = [UIImage imageNamed:subffixImageName];
    NSTextAttachment *backAttachment = [[NSTextAttachment alloc] init];
    backAttachment.image = image;
    backAttachment.bounds = CGRectMake(0, -2, image.size.width, image.size.height);
    NSAttributedString *backString = [NSAttributedString attributedStringWithAttachment:backAttachment];
    
    [mutableAttributedString appendAttributedString:backString];
    
    return mutableAttributedString;
    
}

+ (NSMutableAttributedString *)attributeStringWithSubffixString:(NSString *)subffixString
                                                prefixImageName:(NSString *)prefixImageName
{
    
    NSString *string = subffixString;
    NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc] init];
    
    UIImage *image = [UIImage imageNamed:prefixImageName];
    NSTextAttachment *backAttachment = [[NSTextAttachment alloc] init];
    backAttachment.image = image;
    backAttachment.bounds = CGRectMake(0, -2, image.size.width, image.size.height);
    NSAttributedString *backString = [NSAttributedString attributedStringWithAttachment:backAttachment];
    
    [mutableAttributedString appendAttributedString:backString];
    
    
    [mutableAttributedString appendAttributedString:[[NSMutableAttributedString alloc] initWithString:subffixString]];
    
    return mutableAttributedString;
    
}




@end

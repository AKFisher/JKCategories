//
//  NSString+XXSubStr.h
//  JKCategories-Demo
//
//  Created by seven on 17/1/10.
//  Copyright © 2017年 www.skyfox.org. All rights reserved.
//

#import <Foundation/Foundation.h>
// 字符串为空
#define XX_IsStrEmpty(_ref)    (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) ||([(_ref)isEqualToString:@""]))

@interface NSString (XXSubStr)

-(NSString *)xx_trim ;
-(Boolean)xx_contains: (NSString*)substring;
-(Boolean)xx_startWith:(NSString *)substring ;
-(Boolean)xx_endWith:(NSString *)substring ;
-(NSArray*)xx_split: (NSString*) token;

/**
 *  自动判断字符串长度。如果字符串长度不满足条件，则返回本身
 */
-(NSString *)xx_substringToIndexSafe:(NSUInteger)index ;
/**
 *  自动判断字符串长度。如果字符串长度不满足条件，则返回本身
 */
-(NSString *)xx_substringFromIndexSafe:(NSUInteger)index ;

/**
 *  自动判断字符串长度。如果字符串长度不满足条件，则返回本身
 */
- (NSString*)xx_substringFromIndexSafe:(NSUInteger)from toIndex: (NSUInteger) to;


@end

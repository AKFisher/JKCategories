//
//  NSString+XXSubStr.m
//  JKCategories-Demo
//
//  Created by seven on 17/1/10.
//  Copyright © 2017年 www.skyfox.org. All rights reserved.
//

#import "NSString+XXSubStr.h"

@implementation NSString (XXSubStr)

-(NSString *)xx_trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
-(Boolean)xx_contains:(NSString *)substring {
    NSRange range = [self rangeOfString:substring];
    return range.location != NSNotFound;
}
-(Boolean)xx_startWith:(NSString *)substring {
    return  [self hasPrefix:substring];
}
-(Boolean)xx_endWith:(NSString *)substring {
    return [self hasSuffix:substring];
}
-(NSString *)xx_substringToIndexSafe:(NSUInteger)index {
    if (self.length > index ) {
        return  [self substringToIndex:index];
    }else{
        return self;
    }
}
-(NSString *)xx_substringFromIndexSafe:(NSUInteger)index {

    if (self.length > index ) {
        return  [self substringFromIndex:index];
    }else{
        return self;
    }
}

-(NSArray *)xx_split:(NSString *)token {
  return [self componentsSeparatedByString:token];
}

-(NSString *)xx_substringFromIndexSafe:(NSUInteger)from toIndex:(NSUInteger)to {
    
    if (from < to ) {
        if (self.length > to ) {
            NSRange range;
            range.location = from;
            range.length = to - from;
            return [self substringWithRange: range];
        }else {
            return  [self xx_substringFromIndexSafe:from];
        }
    }else{
        return self;
    }
}

@end

//
//  NSStringDemoViewController.m
//  JKCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 15/3/29.
//  Copyright (c) 2015年 www.skyfox.org. All rights reserved.
//

#import "NSStringDemoViewController.h"
#import "NSString+JKUUID.h"
#import "NSString+XXSubStr.h"
@interface NSStringDemoViewController ()

@end

@implementation NSStringDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
    NSString *string  = @"JKCategories"  ;
    
    if ([string xx_startWith:@"JK"]) {
        NSLog(@"以JK开头");
    }
    if ([string xx_endWith:@"ies"]) {
        NSLog(@"以ies结尾");
    }
    
    if ([string xx_contains:@"w"]) {
        NSLog(@"不含有W");
    }
    NSLog(@"%@",string);
    NSLog(@"截取字符串 %@ ,%@" , [string xx_substringFromIndexSafe:1000] ,[string xx_substringFromIndexSafe:4]);
    NSLog(@"截取字符串 %@ , %@ ",[string xx_substringToIndexSafe:100],[string xx_substringToIndexSafe:4]);
    NSLog(@"%@,%@,%@",[string xx_substringFromIndexSafe:2 toIndex:6],[string xx_substringFromIndexSafe:2 toIndex:200],[string  xx_substringFromIndexSafe:6 toIndex:2]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

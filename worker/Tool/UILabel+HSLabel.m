//
//  UILabel+HSLabel.m
//  Hoomsundb
//
//  Created by hoomsun on 16/7/8.
//  Copyright © 2016年 hoomsun. All rights reserved.
//

#import "UILabel+HSLabel.h"

@implementation UILabel (HSLabel)

+(instancetype)labelWithText:(NSString *)text font:(CGFloat)size rect:(CGRect)rect {
    UILabel *label = [[UILabel alloc]init];
    label.textColor = [UIColor blackColor];
    label.frame = rect;
    label.font = [UIFont systemFontOfSize:size];
    label.text = text;
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}

@end

//
//  UILabel+LLLabel.h
//  test
//
//  Created by NowOrNever on 16/03/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LLLabel)
+ (instancetype)ll_labelWithColor:(UIColor *)color andFontSize:(double)fontSize andText:(NSString *)text;
@end

//
//  UIColor+LLColor.h
//
//  Created by NowOrNever on 12/01/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LLColor)
+ (instancetype)ll_colorWithHex:(unsigned int) hex;
+ (instancetype)ll_randomColor;
+ (instancetype)ll_randomColorWithAlpha:(double)alpha;
@end

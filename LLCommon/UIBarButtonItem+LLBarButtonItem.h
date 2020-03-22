//
//  UIBarButtonItem+LLBarButtonItem.h
//  Objective_C_Microblogging
//
//  Created by NowOrNever on 31/03/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LLBarButtonItem)
+ (instancetype _Nullable )ll_navBarButtonWithTarget:(nullable id)target action:(nullable SEL)action  imageName:(NSString *_Nullable)imageName title:(NSString *_Nullable)title;

@end

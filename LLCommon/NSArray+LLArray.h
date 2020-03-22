//
//  NSArray+LLArray.h
//
//  Created by NowOrNever on 01/03/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (LLArray)
+ (NSArray *)ll_plistToClassWithPlistName:(NSString *)plistName andClassName:(NSString *)className;
- (NSArray *)ll_convertToModelWithClassName:(NSString *)className;
@end

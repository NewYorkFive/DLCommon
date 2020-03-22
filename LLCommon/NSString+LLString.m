//
//  NSString+LLString.m
//
//  Created by NowOrNever on 24/02/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "NSString+LLString.h"

@implementation NSString (LLString)

- (NSString *)ll_appendCachePath{
    NSString *path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    NSString *name = [self lastPathComponent];
    NSString *filePath = [path stringByAppendingPathComponent:name];
    return filePath;
}

@end

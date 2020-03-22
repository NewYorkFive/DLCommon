//
//  NSArray+LLArray.m
//
//  Created by NowOrNever on 01/03/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "NSArray+LLArray.h"
#import "NSObject+LLObject.h"
@implementation NSArray (LLArray)

+ (NSArray *)ll_plistToClassWithPlistName:(NSString *)plistName andClassName:(NSString *)className{
    NSURL *plistUrl = [[NSBundle mainBundle]URLForResource:plistName withExtension:nil];
    NSArray *tempArray = [NSArray arrayWithContentsOfURL:plistUrl];
    return [tempArray ll_convertToModelWithClassName:className];
}
- (NSArray *)ll_convertToModelWithClassName:(NSString *)className{
    NSMutableArray *targetArray = [[NSMutableArray alloc]init];
    Class ModelClass = NSClassFromString(className);
    for (NSDictionary * dict in self) {
        [targetArray addObject:[ModelClass lk_createObjectWithDict:dict]];
    }
    return targetArray;
}
@end

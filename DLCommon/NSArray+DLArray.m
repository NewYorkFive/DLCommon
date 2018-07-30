//
//  NSArray+DLArray.m
//
//  Created by NowOrNever on 01/03/2017.
//  Copyright © 2017 NowOrNever. All rights reserved.
//

#import "NSArray+DLArray.h"
#import "NSObject+DLObject.h"
@implementation NSArray (DLArray)

+ (NSArray *)dl_plistToClassWithPlistName:(NSString *)plistName andClassName:(NSString *)className{
    NSURL *plistUrl = [[NSBundle mainBundle]URLForResource:plistName withExtension:nil];
    NSArray *tempArray = [NSArray arrayWithContentsOfURL:plistUrl];
    return [tempArray dl_convertToModelWithClassName:className];
}
- (NSArray *)dl_convertToModelWithClassName:(NSString *)className{
    NSMutableArray *targetArray = [[NSMutableArray alloc]init];
    Class ModelClass = NSClassFromString(className);
    for (NSDictionary * dict in self) {
        [targetArray addObject:[ModelClass lk_createObjectWithDict:dict]];
    }
    return targetArray;
}
@end

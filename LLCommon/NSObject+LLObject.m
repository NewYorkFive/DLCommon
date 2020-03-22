//
//  NSObject+LLObject.m
//  test
//
//  Created by NowOrNever on 16/03/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import "NSObject+LLObject.h"

@implementation NSObject (LLObject)

- (instancetype)ll_dictToPropertyWithDict:(NSDictionary *)dict{
    [self setValuesForKeysWithDictionary:dict];
    return self;
}

+ (instancetype)ll_createObjectWithDict:(NSDictionary *)dict{
    return [[[self alloc]init] ll_dictToPropertyWithDict:dict];
}


@end

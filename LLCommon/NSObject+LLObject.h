//
//  NSObject+LLObject.h
//  test
//
//  Created by NowOrNever on 16/03/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LLObject)
- (instancetype)ll_dictToPropertyWithDict:(NSDictionary *)dict;
+ (instancetype)ll_createObjectWithDict:(NSDictionary *)dict;

@end

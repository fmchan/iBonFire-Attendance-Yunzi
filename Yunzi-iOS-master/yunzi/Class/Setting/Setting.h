//
//  Setting.h
//  yunzi
//
//  Created by admin on 17/7/15.
//  Copyright (c) 2015 sensoro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Setting : NSObject
+ (NSString *)getPath;
+ (NSMutableDictionary *)getPlist;
@end

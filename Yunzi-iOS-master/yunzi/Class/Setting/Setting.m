//
//  Setting.m
//  yunzi
//
//  Created by admin on 17/7/15.
//  Copyright (c) 2015 sensoro. All rights reserved.
//

#import "Setting.h"

@implementation Setting
+ (NSString *)getPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    return [basePath stringByAppendingPathComponent:@"bonfire.plist"];
}
+ (NSMutableDictionary *)getPlist {
    return [NSMutableDictionary dictionaryWithContentsOfFile:[self getPath]];
}
@end

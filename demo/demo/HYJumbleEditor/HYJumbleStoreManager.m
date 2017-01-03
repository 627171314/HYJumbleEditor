//
//  OraSecurityManager.m
//  Imora
//
//  Created by huyong on 27/9/16.
//  Copyright © 2016年 huyong. All rights reserved.
//

#import "HYJumbleStoreManager.h"

@interface HYJumbleStoreManager ()
@property (nonatomic, copy) NSString *path;
@end


@implementation HYJumbleStoreManager

+ (HYJumbleStoreManager *)shareInstance
{
    static HYJumbleStoreManager *instance;
    static dispatch_once_t pred = 0;
    dispatch_once(&pred, ^{
        if (nil == instance) {
            instance = [[HYJumbleStoreManager alloc] init];
        }
    });
    return instance;
}

- (HYJumbleDataEditor *)getEditorByName:(NSString *)name
{
    return [[HYJumbleDataEditor alloc] initWithName:name path:self.path];
}

- (HYJumbleDataEditor *)getEditorByClass:(Class)className
{
    return [self getEditorByName:NSStringFromClass(className)];
}

- (HYJumbleDataEditor *)getEditor:(UIViewController *)context
{
    return [self getEditorByName:NSStringFromClass([context class])];
}

- (void)setPath:(NSString *)path
{
    _path = path;
}

@end

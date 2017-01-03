//
//  OraJumbleDataEditor.m
//  Imora
//
//  Created by huyong on 29/9/16.
//  Copyright © 2016年 huyong. All rights reserved.
//

#import "HYJumbleDataEditor.h"

#define kJumbleFileExt      @".jdt"

@interface HYJumbleDataEditor ()

@property (nonatomic, strong) NSString *fileName; /* 该editor对应的文件名 */
@property (nonatomic, strong) NSString *dirPath;  /* 父文件夹路径 */
@property (nonatomic, strong) NSString *filepath; /* 该editor对应的文件路径 */
@property (nonatomic, strong) NSMutableDictionary *bucket;

@end

@implementation HYJumbleDataEditor

- (instancetype)initWithName:(NSString *)name path:(NSString *)path
{
    self.dirPath = path;
    return [self initWithName:name];
}

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        if (!name) {
            name = @"null"; // 默认会给你一个共用的
        }
        self.fileName = [NSString stringWithFormat:@"%@%@",name,kJumbleFileExt];
        self.dirPath = [self.dirPath stringByAppendingFormat:@"%@",@"/.jumble"]; // ios "."开头的路径会被隐藏
        self.filepath = [NSString stringWithFormat:@"%@/%@", self.dirPath,self.fileName];
        
        //读文件
        NSDictionary* bucket = [NSDictionary dictionaryWithContentsOfFile:self.filepath];
        if(bucket == nil)
        {
            bucket = [NSMutableDictionary dictionary];
        }
        self.bucket = [NSMutableDictionary dictionaryWithDictionary:bucket];
    }
    
    return self;
}

- (int)getIntForKey:(NSString *)key
{
    return [self.bucket hy_intForKey:key];
}
- (void)putInt:(int)value forKey:(NSString *)key
{
    [self.bucket hy_setInt:value forKey:key];
}

- (float)getFloatForKey:(NSString *)key
{
    return [self.bucket hy_floatForKey:key];
}
- (void)putFloat:(float)value forKey:(NSString *)key
{
    [self.bucket hy_setFloat:value forKey:key];
}

- (double)getDoubleForKey:(NSString *)key
{
    return [self.bucket hy_doubleForKey:key];
}
- (void)putDouble:(double)value forKey:(NSString *)key
{
    [self.bucket hy_setDouble:value forKey:key];
}

- (long)getLongForKey:(NSString *)key
{
    id value = [self.bucket objectForKey:key];
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value longValue];
    }
    return 0;
}
- (void)putLong:(long)value forKey:(NSString *)key
{
    [self.bucket setObject:@(value) forKey:key];
}

- (long long)getLongLongForKey:(NSString *)key
{
    return [self.bucket hy_longLongForKey:key];
}
- (void)putLongLong:(long long)value forKey:(NSString *)key
{
    [self.bucket hy_setLongLong:value forKey:key];
}

- (id)getDataForKey:(NSString *)key
{
    return [self.bucket objectForKey:key];
}
- (void)putData:(id)data forKey:(NSString *)key
{
    [self.bucket hy_setObject:data forKey:key];
}

- (NSInteger)getInteger:(NSString *)key
{
    return [self.bucket hy_integerForKey:key];
}
- (void)putInteger:(NSInteger)value forkey:(NSString *)key
{
    [self.bucket hy_setInteger:value forKey:key];
}

- (NSString *)getStringForKey:(NSString *)key
{
    return [self.bucket hy_stringForKey:key];
}
- (void)putString:(NSString *)value forKey:(NSString *)key
{
    [self.bucket hy_setString:value forKey:key];
}

- (BOOL)getBOOLForKey:(NSString *)key
{
    return [self.bucket hy_boolForKey:key];
}
- (void)putBOOL:(BOOL)value forKey:(NSString *)key
{
    [self.bucket hy_setBool:value forKey:key];
}

- (NSNumber *)getNumberForKey:(NSString *)key
{
    return [self.bucket hy_numberForKey:key];
}
- (void)putNumber:(NSNumber *)value forKey:(NSString *)key
{
    [self.bucket hy_setObject:value forKey:key];
}

- (NSArray *)getArrayForKey:(NSString *)key
{
    return [self.bucket hy_arrayForKey:key];
}
- (void)putArray:(NSArray *)value forKey:(NSString *)key
{
    [self.bucket hy_setObject:value forKey:key];
}

- (NSMutableArray *)getMutableArrayForKey:(NSString *)key
{
    id value = [self.bucket hy_arrayForKey:key];
    if (value && [value isKindOfClass:[NSArray class]]) {
        return [NSMutableArray arrayWithArray:value];
    }
    return nil;
}
- (void)putMutableArray:(NSMutableArray *)value forKey:(NSString *)key
{
    [self.bucket hy_setObject:value forKey:key];
}

- (NSDictionary *)getDictionaryForKey:(NSString *)key
{
    return [self.bucket hy_dictionaryForKey:key];
}
- (void)putDictionary:(NSDictionary *)value forkey:(NSString *)key
{
    [self.bucket hy_setObject:value forKey:key];
}

- (NSMutableDictionary *)getMutableDictionaryForKey:(NSString *)key
{
    id value = [self.bucket hy_dictionaryForKey:key];
    if (value && [value isKindOfClass:[NSDictionary class]]) {
        return [NSMutableDictionary dictionaryWithDictionary:value];
    }
    return nil;
}
- (void)putMutableDictionary:(NSMutableDictionary *)value forKey:(NSString *)key
{
    [self.bucket hy_setObject:value forKey:key];
}

- (NSData *)getNSDataForKey:(NSString *)key
{
    return [self.bucket objectForKey:key];
}
- (void)putNSData:(NSData *)data forKey:(NSString *)key
{
    [self.bucket hy_setObject:data forKey:key];
}

- (NSDate *)getDateForKey:(NSString *)key
{
    return [self.bucket objectForKey:key];
}
- (void)putDate:(NSDate *)date forKey:(NSString *)key
{
    [self.bucket hy_setObject:date forKey:key];
}

- (CGFloat)getCGFloatForKey:(NSString *)key
{
    return [self.bucket hy_CGFloatForKey:key];
}
- (void)putCGFloat:(CGFloat)value forKey:(NSString *)key
{
    [self.bucket hy_setCGFloat:value forKey:key];
}

- (CGPoint)getPointForKey:(NSString *)key
{
    return [self.bucket hy_pointForKey:key];
}
- (void)putPoint:(CGPoint)point forKey:(NSString *)key
{
    [self.bucket hy_setPoint:point forKey:key];
}

- (CGRect)getRectForKey:(NSString *)key
{
    return [self.bucket hy_rectForKey:key];
}
- (void)putRect:(CGRect)rect forKey:(NSString *)key
{
    [self.bucket hy_setRect:rect forKey:key];
}

- (CGSize)getSizeForKey:(NSString *)key
{
    return [self.bucket hy_sizeForKey:key];
}
- (void)putSize:(CGSize)size forKey:(NSString *)key
{
    [self.bucket hy_setSize:size forKey:key];
}

- (void)removeForKey:(NSString *)key
{
    [self.bucket removeObjectForKey:key];
}

- (void)commit
{
    @synchronized (self) {
        if (![[NSFileManager defaultManager] fileExistsAtPath:self.dirPath]) {
            [[NSFileManager defaultManager] createDirectoryAtPath:self.dirPath withIntermediateDirectories:YES attributes:nil error:nil];
        }
        if (![[NSFileManager defaultManager] fileExistsAtPath:self.filepath]) {
            [[NSFileManager defaultManager] createFileAtPath:self.filepath contents:nil attributes:nil];
        }
        [self.bucket writeToFile:self.filepath atomically:YES];        
    }
}
- (void)clear
{
    @synchronized (self) {
        [self.bucket removeAllObjects];
        [self.bucket writeToFile:self.filepath atomically:YES];
    }
}

@end

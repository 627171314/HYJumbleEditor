//
//  OraJumbleDataEditor.h
//  Imora
//
//  Created by huyong on 29/9/16.
//  Copyright © 2016年 huyong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "NSDictionary+Extension.h"
#import "NSMutableDictionary+Extension.h"

@interface HYJumbleDataEditor : NSObject

- (instancetype)initWithName:(NSString *)name path:(NSString *)path;
- (instancetype)initWithName:(NSString *)name;

- (id)getDataForKey:(NSString *)key;
- (void)putData:(id)data forKey:(NSString *)key;

- (int)getIntForKey:(NSString *)key;
- (void)putInt:(int)value forKey:(NSString *)key;

- (float)getFloatForKey:(NSString *)key;
- (void)putFloat:(float)value forKey:(NSString *)key;

- (double)getDoubleForKey:(NSString *)key;
- (void)putDouble:(double)value forKey:(NSString *)key;

- (long)getLongForKey:(NSString *)key;
- (void)putLong:(long)value forKey:(NSString *)key;

- (long long)getLongLongForKey:(NSString *)key;
- (void)putLongLong:(long long)value forKey:(NSString *)key;

- (NSInteger)getInteger:(NSString *)key;
- (void)putInteger:(NSInteger)value forkey:(NSString *)key;

- (NSString *)getStringForKey:(NSString *)key;
- (void)putString:(NSString *)value forKey:(NSString *)key;

- (BOOL)getBOOLForKey:(NSString *)key;
- (void)putBOOL:(BOOL)value forKey:(NSString *)key;

- (NSNumber *)getNumberForKey:(NSString *)key;
- (void)putNumber:(NSNumber *)value forKey:(NSString *)key;

- (NSArray *)getArrayForKey:(NSString *)key;
- (void)putArray:(NSArray *)value forKey:(NSString *)key;

- (NSMutableArray *)getMutableArrayForKey:(NSString *)key;
- (void)putMutableArray:(NSMutableArray *)value forKey:(NSString *)key;

- (NSDictionary *)getDictionaryForKey:(NSString *)key;
- (void)putDictionary:(NSDictionary *)value forkey:(NSString *)key;

- (NSMutableDictionary *)getMutableDictionaryForKey:(NSString *)key;
- (void)putMutableDictionary:(NSMutableDictionary *)value forKey:(NSString *)key;

- (NSData *)getNSDataForKey:(NSString *)key;
- (void)putNSData:(NSData *)data forKey:(NSString *)key;

- (NSDate *)getDateForKey:(NSString *)key;
- (void)putDate:(NSDate *)date forKey:(NSString *)key;

- (CGFloat)getCGFloatForKey:(NSString *)key;
- (void)putCGFloat:(CGFloat)value forKey:(NSString *)key;

- (CGPoint)getPointForKey:(NSString *)key;
- (void)putPoint:(CGPoint)point forKey:(NSString *)key;

- (CGRect)getRectForKey:(NSString *)key;
- (void)putRect:(CGRect)rect forKey:(NSString *)key;

- (CGSize)getSizeForKey:(NSString *)key;
- (void)putSize:(CGSize)size forKey:(NSString *)key;

- (void)removeForKey:(NSString *)key;
- (void)commit; /* 保存此次修改到磁盘文件,操作完请调用此方法 */
- (void)clear;  /* 清除和这个Editor关联的内存和磁盘的数据 */

@end

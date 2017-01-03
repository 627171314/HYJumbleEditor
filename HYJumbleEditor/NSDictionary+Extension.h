#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDictionary (hy_Short)

- (long)hy_longForKey:(NSString *)key;

- (int)hy_intForKey:(NSString *)key;

- (NSString *)hy_stringForKey:(id)key;

- (NSNumber *)hy_numberForKey:(id)key;

- (NSArray *)hy_arrayForKey:(id)key;

- (NSDictionary *)hy_dictionaryForKey:(id)key;

- (NSInteger)hy_integerForKey:(id)key;

- (NSUInteger)hy_unsignedIntegerForKey:(id)key;

- (BOOL)hy_boolForKey:(id)key;

- (int16_t)hy_int16ForKey:(id)key;

- (int32_t)hy_int32ForKey:(id)key;

- (int64_t)hy_int64ForKey:(id)key;

- (char)hy_charForKey:(id)key;

- (short)hy_shortForKey:(id)key;

- (float)hy_floatForKey:(id)key;

- (double)hy_doubleForKey:(id)key;

- (long long)hy_longLongForKey:(id)key;

- (unsigned long long)hy_unsignedLongLongForKey:(id)key;

// CG
- (CGFloat)hy_CGFloatForKey:(id)key;

- (CGPoint)hy_pointForKey:(id)key;

- (CGSize)hy_sizeForKey:(id)key;

- (CGRect)hy_rectForKey:(id)key;

// 根据key/key形式获取数据，分隔符'/'
- (id)getObjectByPath:(NSString *)path;
@end

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableDictionary (hy_Short)

- (void)hy_setObject:(id)object forKey:(NSString *)key;

- (void)hy_setString:(NSString *)s forKey:(NSString *)key;

- (void)hy_setBool:(BOOL)i forKey:(NSString *)key;

- (void)hy_setInt:(int)i forKey:(NSString *)key;

- (void)hy_setInteger:(NSInteger)i forKey:(NSString *)key;

- (void)hy_setUnsignedInteger:(NSUInteger)i forKey:(NSString *)key;

- (void)hy_setCGFloat:(CGFloat)f forKey:(NSString *)key;

- (void)hy_setChar:(char)c forKey:(NSString *)key;

- (void)hy_setFloat:(float)i forKey:(NSString *)key;

- (void)hy_setDouble:(double)i forKey:(NSString *)key;

- (void)hy_setLongLong:(long long)i forKey:(NSString *)key;

- (void)hy_setPoint:(CGPoint)o forKey:(NSString *)key;

- (void)hy_setSize:(CGSize)o forKey:(NSString *)key;

- (void)hy_setRect:(CGRect)o forKey:(NSString *)key;

@end

#import "NSMutableDictionary+Extension.h"

@implementation NSMutableDictionary (hy_Short)

- (void)hy_setObject:(id)object forKey:(NSString *)key {
    if (object) {
        [self setObject:object forKey:key];
    }
}

- (void)hy_setString:(NSString *)s forKey:(NSString *)key {
    if (s) {
        [self setObject:s forKey:key];
    }
}

- (void)hy_setBool:(BOOL)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)hy_setInt:(int)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)hy_setInteger:(NSInteger)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)hy_setUnsignedInteger:(NSUInteger)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)hy_setCGFloat:(CGFloat)f forKey:(NSString *)key {
    self[key] = @(f);
}

- (void)hy_setChar:(char)c forKey:(NSString *)key {
    self[key] = @(c);
}

- (void)hy_setFloat:(float)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)hy_setDouble:(double)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)hy_setLongLong:(long long)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)hy_setPoint:(CGPoint)o forKey:(NSString *)key {
    self[key] = NSStringFromCGPoint(o);
}

- (void)hy_setSize:(CGSize)o forKey:(NSString *)key {
    self[key] = NSStringFromCGSize(o);
}

- (void)hy_setRect:(CGRect)o forKey:(NSString *)key {
    self[key] = NSStringFromCGRect(o);
}

@end

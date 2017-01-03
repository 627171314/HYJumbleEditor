//
//  OraSecurityManager.h
//  Imora
//
//  Created by huyong on 27/9/16.
//  Copyright © 2016年 huyong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HYJumbleDataEditor.h"

@interface HYJumbleStoreManager : NSObject

+ (HYJumbleStoreManager *)shareInstance;

- (void)setPath:(NSString *)path;

- (HYJumbleDataEditor *)getEditor:(UIViewController *)context;  /* 获取一个跟当前controller绑定的存储文件 */
- (HYJumbleDataEditor *)getEditorByName:(NSString *)name;       /* 根据指定名字获取一个独立的存储文件 */
- (HYJumbleDataEditor *)getEditorByClass:(Class)className;     /* 根据类名获取存储文件 */
@end

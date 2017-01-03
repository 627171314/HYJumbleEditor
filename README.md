# HYJumbleEditor
============


###Purpose

HYJumbleEditor is a handy way to save data for a Controller or a Class, simple like NSUerDefault or SharePreference in Android.

Author: [Hu Yong](https://github.com/627171314/).

_Remark: Please accept my apologize if any bad coding._

###Installations

####Manual

1. Download or clone HYJumbleEditor, import into your project.
2. Use HYJumbleEditor whereever you need it.

###Easy Example

To use HYJumbleEditor.
 ```objective-c
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // set path
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    HYJumbleStoreManager *manager = [HYJumbleStoreManager shareInstance];
    [manager setPath:path];
    
    
    HYJumbleDataEditor *editor = [[HYJumbleStoreManager shareInstance] getEditor:self];
   
    // int    数字
    [editor putInt:121 forKey:@"aintKey"];
    //  CGRect
    [editor putRect:CGRectMake(0, 0, 100, 100) forKey:@"aCGRectKey"];
    //  NSDate
    [editor putDate:[NSDate date] forKey:@"aNSDateKey"];
    //  NSMutableArray
    NSMutableArray *mtemp = [NSMutableArray array];
    [mtemp addObject:@"NSMutableArray--"];
    [editor putMutableArray:mtemp forKey:@"aNSMutableArrayKey"];
    //  NSArray
    NSArray *temp = [NSArray arrayWithObjects:@"NSArray--", nil];
    [editor putArray:temp forKey:@"aNSArrayKey"];
    // commit   提交
    [editor commit];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    HYJumbleDataEditor *editor = [[HYJumbleStoreManager shareInstance] getEditor:self];
    
    int intnum = [editor getIntForKey:@"aintKey"];
    NSLog(@"int %d",intnum);
    
    CGRect rect = [editor getRectForKey:@"aCGRectKey"];
    NSLog(@"CGRect%@",NSStringFromCGRect(rect));
    
    NSDate *date = [editor getDateForKey:@"aNSDateKey"];
    NSLog(@"NSDate %@",date);
    
    NSMutableArray *marray = [editor getMutableArrayForKey:@"aNSMutableArrayKey"];
    [marray addObject:@"NSMutableArray++"];
    NSLog(@"NSMutableArray %ld,  %@",marray.count, [marray description]);
    
    NSArray *array = [editor getArrayForKey:@"aNSArrayKey"];
    NSLog(@"NSArray %@", array.firstObject);
}

Consle Log:
2017-01-03 10:25:03.848 demo[1216:34260] int 121
2017-01-03 10:25:03.848 demo[1216:34260] CGRect{{0, 0}, {100, 100}}
2017-01-03 10:25:03.849 demo[1216:34260] NSDate 2017-01-03 02:25:03 +0000
2017-01-03 10:25:03.850 demo[1216:34260] NSMutableArray 2,  (
    "NSMutableArray--",
    "NSMutableArray++"
)
2017-01-03 10:25:03.850 demo[1216:34260] NSArray NSArray--

 ```

###License
This code is distributed under the terms and conditions of the [BSD license](LICENSE). 

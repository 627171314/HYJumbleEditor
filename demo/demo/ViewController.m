//
//  ViewController.m
//  demo
//
//  Created by huyong on 16/12/30.
//  Copyright © 2016年 Hu Yong. All rights reserved.
//

#import "ViewController.h"
#import "HYJumbleStoreManager.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end

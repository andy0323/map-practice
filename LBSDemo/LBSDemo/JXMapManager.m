//
//  JXMapManager.m
//  LBSDemo
//
//  Created by andy on 1/14/15.
//  Copyright (c) 2015 andy. All rights reserved.
//

#import "JXMapManager.h"

@implementation JXMapManager
/// 单例
+ (instancetype)shareInstance
{
    static JXMapManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (instancetype)init
{
    if (self = [super init]) {
        [MAMapServices sharedServices].apiKey = (NSString *)APP_MAP_KEY;
    }
    
    return self;
}


@end

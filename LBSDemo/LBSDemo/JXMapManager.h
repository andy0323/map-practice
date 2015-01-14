//
//  JXMapManager.h
//  LBSDemo
//
//  Created by andy on 1/14/15.
//  Copyright (c) 2015 andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapSearchKit/AMapSearchAPI.h>

/// 高德地图Key
#define APP_MAP_KEY @"2b9514d7758cc8aa873524946d041bde"

@interface JXMapManager : NSObject
/// 单例
+ (instancetype)shareInstance;
@end

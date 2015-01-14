//
//  JXViewController.m
//  LBSDemo
//
//  Created by andy on 1/14/15.
//  Copyright (c) 2015 andy. All rights reserved.
//

#import "JXViewController.h"
#import "JXMapManager.h"

@interface JXViewController ()<MAMapViewDelegate>
{
    MAMapView *_mapView;
}
@end

@implementation JXViewController

#pragma mark -
#pragma mark 生命周期函数
- (void)viewDidLoad
{
    [super viewDidLoad];

    _mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    _mapView.delegate = self;
    [self.view addSubview:_mapView];
}

@end

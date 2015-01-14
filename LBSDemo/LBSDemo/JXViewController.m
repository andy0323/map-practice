//
//  JXViewController.m
//  LBSDemo
//
//  Created by andy on 1/14/15.
//  Copyright (c) 2015 andy. All rights reserved.
//

#import "JXViewController.h"
#import "JXMapManager.h"

@interface JXViewController ()<MAMapViewDelegate, AMapSearchDelegate>
@property (nonatomic, strong) MAMapView *mapView;
@property (nonatomic, strong) AMapSearchAPI *search;
@end

@implementation JXViewController

#pragma mark -
#pragma mark 生命周期函数

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.search.delegate = self;

    _mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    _mapView.delegate = self;
    [self.view addSubview:_mapView];
    
    
    // 显示用户位置、开启实时定位
    _mapView.showsUserLocation = YES;
    
    //地图跟着位置移动
    [_mapView setUserTrackingMode: MAUserTrackingModeFollow
                         animated:YES];

}

#pragma mark -
#pragma mark 地图定位回调

- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation
updatingLocation:(BOOL)updatingLocation
{
    if(updatingLocation)
    {
        //取出当前位置的坐标
        NSLog(@"latitude : %f,longitude: %f",
              userLocation.coordinate.latitude,
              userLocation.coordinate.longitude);
    }
}
@end

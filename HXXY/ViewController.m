//
//  ViewController.m
//  HXXY
//
//  Created by Apple on 8/31/15.
//  Copyright (c) 2015 华讯网络投资有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<MAMapViewDelegate>
{
    MAMapView *_mapView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [MAMapServices sharedServices].apiKey = @"970c535e6334b0eb49661e2435e03892";
    
    _mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    _mapView.delegate = self;
    
    CLLocationCoordinate2D coor ={23.5533,116.3688};
    _mapView.centerCoordinate = coor;
    
    [self.view addSubview:_mapView];
    
    _mapView.showsUserLocation = YES; //YES 为打开定位,NO 为关闭定位
}

-(void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation
updatingLocation:(BOOL)updatingLocation
{
    
        //取出当前位置的坐标
        NSLog(@"latitude : %f,longitude: %f",userLocation.coordinate.latitude,userLocation.coordinate.longitude);
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

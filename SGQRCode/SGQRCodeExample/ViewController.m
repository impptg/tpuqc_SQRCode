//
//  ViewController.m
//  SGQRCodeExample
//
//  Created by kingsic on 16/8/25.
//  Copyright © 2016年 kingsic. All rights reserved.
//
#import "ViewController.h"
//#import "ppViewController.h"
//#import <AVFoundation/AVFoundation.h>
//#import "WBQRCodeVC.h"
//#import "WCQRCodeVC.h"

//@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
//@property (weak, nonatomic) IBOutlet UITableView *tableView;
//@property (nonatomic, strong) NSArray *dataList;
//@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
//
//
//- (void)QRCodeScanVC2:(UIViewController *)scanVC {
//    scanVC.modalPresentationStyle = 0;
//
//    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
//    if (device) {
//        AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
//        switch (status) {
//                case AVAuthorizationStatusNotDetermined: {
//                    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
//                        if (granted) {
//                            dispatch_sync(dispatch_get_main_queue(), ^{
//                                [self presentViewController:scanVC animated:YES completion:nil];
//                            });
//                            NSLog(@"用户第一次同意了访问相机权限 - - %@", [NSThread currentThread]);
//                        } else {
//                            NSLog(@"用户第一次拒绝了访问相机权限 - - %@", [NSThread currentThread]);
//                        }
//                    }];
//                    break;
//                }
//                case AVAuthorizationStatusAuthorized: {
//                    [self presentViewController:scanVC animated:YES completion:nil];
//                    break;
//                }
//                case AVAuthorizationStatusDenied: {
//                    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请去-> [设置 - 隐私 - 相机 - SGQRCodeExample] 打开访问开关" preferredStyle:(UIAlertControllerStyleAlert)];
//                    UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
//
//                    }];
//
//                    [alertC addAction:alertA];
//                    [self presentViewController:alertC animated:YES completion:nil];
//                    break;
//                }
//                case AVAuthorizationStatusRestricted: {
//                    NSLog(@"因为系统原因, 无法访问相册");
//                    break;
//                }
//
//            default:
//                break;
//        }
//        return;
//    }
//
//    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"未检测到您的摄像头" preferredStyle:(UIAlertControllerStyleAlert)];
//    UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
//
//    }];
//
//    [alertC addAction:alertA];
//    [self presentViewController:alertC animated:YES completion:nil];
//}


@end


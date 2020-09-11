//
//  ppViewController.m
//  SGQRCodeExample
//
//  Created by pptg Guo on 2020/9/7.
//  Copyright © 2020 Sorgle. All rights reserved.
//

#import "ppViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "WBQRCodeVC.h"
#import "WCQRCodeVC.h"

// 加载全局变量
extern int pp_code;
extern NSString *pp_name;
extern NSString *pp_number;
extern NSString *pp_college;
extern NSString *pp_leader1;
extern NSString *pp_leader2;

@interface ppViewController ()

@end

@implementation ppViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 存储界面
    _text_name.text = pp_name;
    _text_number.text = pp_number;
    _text_college.text = pp_college;
    _text_leader1.text = pp_leader1;
    _text_leader2.text = pp_leader2;
    
    
    // 欢迎返校
    _fx_name.text = pp_name;
    _fx_number.text = pp_number;
    _fx_college.text = pp_college;
    
    // 允许出校
    _lx_name.text = pp_name;
    _lx_number.text = pp_number;
    _lx_college.text = pp_college;
    
    // 离校审批固定字段
    _lxsp_name1.text = pp_name;
    _lxsp_name2.text = pp_name;
    _lxsp_leader1.text = pp_leader1;
    _lxsp_leader2.text = pp_leader2;
    _lxsp_number.text = pp_number;
    
    
    //1.用[NSDate date]可以获取系统当前时间
    NSDate * currentDate = [NSDate date];
    NSDate * backDate = [NSDate dateWithTimeIntervalSinceNow:2*60*60];
    NSDate * goDate = [NSDate dateWithTimeIntervalSinceNow:-2*60*60];

    //2.实例化一个日期格式转换器
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];

    //3.指定地区一定要指定，否则真机运行会有问题，统一用 en 即可
    dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"en"];

    //4.设置输出格式
    dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";

    //5.通过日期格式转换器将NSDate类转换成可以输出的字符串.
    NSString *currentDateStr = [dateFormatter stringFromDate:currentDate];
    NSString *backDateStr = [dateFormatter stringFromDate:backDate];
    NSString *goDateStr = [dateFormatter stringFromDate:goDate];

    NSDate *sqtime = [NSDate dateWithTimeIntervalSinceNow:-47*60*57+78];
    NSString *sqtimeStr = [dateFormatter stringFromDate:sqtime];

    NSDate *shtime = [NSDate dateWithTimeIntervalSinceNow:-24*60*55+7];
    NSString *shtimeStr = [dateFormatter stringFromDate:shtime];

    NSDate *sptime = [NSDate dateWithTimeIntervalSinceNow:-24*60*55+1200];
    NSString *sptimeStr = [dateFormatter stringFromDate:sptime];
    
    

    if (pp_code==1) {   //离校显示时间
        _lxsp_time1.text = sqtimeStr; //申请
        _lxsp_time2.text = shtimeStr; //审核
        _lxsp_time3.text = sptimeStr; //审批
        _lxsp_time4.text = currentDateStr;    //出校

        _lxsp_cftime.text = [[currentDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _lxsp_fxtime.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"];

        _lxsp_time5.text = NULL;
        _lxsp_place.text = NULL;
        _lsxp_smlx.textColor = [UIColor systemPurpleColor];
        
        
        //离校审批 - 申报入口界面
        _sbrk_time1.text = [[currentDateStr substringToIndex:13]stringByAppendingString:@":00:00"]; //外出时间
        _sbrk_time2.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"];    // 预计返校时间
        _sbrk_tim3.text = currentDateStr;   //更新时间
        _sbrk_state.text = @"待返校";
    };
    if(pp_code == 2){   //返校显示时间
        _lxsp_time1.text = sqtimeStr; //申请
        _lxsp_time2.text = shtimeStr; //审核
        _lxsp_time3.text = sptimeStr; //审批
        _lxsp_time4.text = goDateStr;    //出校

        _lxsp_cftime.text = [[goDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _lxsp_fxtime.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"];

        _lxsp_time5.text = currentDateStr;
        _lxsp_place.text = @"崇文门";
        _lsxp_fxxj.textColor = [UIColor systemPurpleColor];
        
        
        //离校审批 - 申报入口界面
        _sbrk_time1.text = [[goDateStr substringToIndex:13]stringByAppendingString:@":00:00"]; //外出时间
        _sbrk_time2.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"]; // 预计返校时间
        _sbrk_tim3.text = currentDateStr;   //更新时间
        _sbrk_state.text = @"结束";
    };

    // Do any additional setup after loading the view.
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)pp_save:(id)sender {
    // 保存按钮，将修改后的个人文件保存
    NSString *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *filePath = [path stringByAppendingPathComponent:@"array.plist"];
        NSLog(@"%@",filePath);

    
    
    //NSString *filePath = [[NSBundle mainBundle] pathForResource:@"pp_list" ofType:@"plist"];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:_text_name.text forKey:@"pp_name"];
    [dict setObject:_text_number.text forKey:@"pp_number"];
    [dict setObject:_text_college.text forKey:@"pp_college"];
    [dict setObject:_text_leader1.text forKey:@"pp_leader1"];
    [dict setObject:_text_leader2.text forKey:@"pp_leader2"];
    [dict writeToFile:filePath atomically:YES];
    
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    pp_name = [dic objectForKey:@"pp_name"];
    pp_number = [dic objectForKey:@"pp_number"];
    pp_college = [dic objectForKey:@"pp_college"];
    pp_leader1 = [dic objectForKey:@"pp_leader1"];
    pp_leader2 = [dic objectForKey:@"pp_leader2"];
    NSLog(@"%@",dic);
    
    //切换至申报入口
    UIStoryboard * sb =
    [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * lvc =
    [sb instantiateViewControllerWithIdentifier:@"sbrk"];
    lvc.modalPresentationStyle = 0;
    [self presentViewController:lvc animated:NO completion:nil];
}

- (IBAction)btn_go:(id)sender {
    pp_code = 1;    // 离校 1
    UIStoryboard * sb =
    [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * lvc =
    [sb instantiateViewControllerWithIdentifier:@"sbrk"];
    lvc.modalPresentationStyle = 0;
    [self presentViewController:lvc animated:NO completion:nil];
}
- (IBAction)btn_back:(id)sender {
    pp_code = 2;    // 返校 2
    UIStoryboard * sb =
    [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * lvc =
    [sb instantiateViewControllerWithIdentifier:@"sbrk"];
    lvc.modalPresentationStyle = 0;
    [self presentViewController:lvc animated:NO completion:nil];
}
// 离校按钮
- (IBAction)btn_lx:(id)sender {
    //pp_code = 1;
    WCQRCodeVC *WCVC = [[WCQRCodeVC alloc] init];
    [self QRCodeScanVC2:WCVC];
}

// 返校按钮
- (IBAction)fxbtn:(id)sender {
    //pp_code = 2;
    WCQRCodeVC *WCVC = [[WCQRCodeVC alloc] init];
    [self QRCodeScanVC2:WCVC];
}

- (void)QRCodeScanVC2:(UIViewController *)scanVC {
    scanVC.modalPresentationStyle = 0;

    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (device) {
        AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        switch (status) {
                case AVAuthorizationStatusNotDetermined: {
                    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
                        if (granted) {
                            dispatch_sync(dispatch_get_main_queue(), ^{
                                [self presentViewController:scanVC animated:YES completion:nil];
                            });
                            NSLog(@"用户第一次同意了访问相机权限 - - %@", [NSThread currentThread]);
                        } else {
                            NSLog(@"用户第一次拒绝了访问相机权限 - - %@", [NSThread currentThread]);
                        }
                    }];
                    break;
                }
                case AVAuthorizationStatusAuthorized: {
                    [self presentViewController:scanVC animated:YES completion:nil];
                    break;
                }
                case AVAuthorizationStatusDenied: {
                    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请去-> [设置 - 隐私 - 相机 - SGQRCodeExample] 打开访问开关" preferredStyle:(UIAlertControllerStyleAlert)];
                    UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
                        
                    }];
                    
                    [alertC addAction:alertA];
                    [self presentViewController:alertC animated:YES completion:nil];
                    break;
                }
                case AVAuthorizationStatusRestricted: {
                    NSLog(@"因为系统原因, 无法访问相册");
                    break;
                }
                
            default:
                break;
        }
        return;
    }
    
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"未检测到您的摄像头" preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *alertA = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [alertC addAction:alertA];
    [self presentViewController:alertC animated:YES completion:nil];
}

- (IBAction)pp_end:(id)sender {
    [sender resignFirstResponder];
}

@end

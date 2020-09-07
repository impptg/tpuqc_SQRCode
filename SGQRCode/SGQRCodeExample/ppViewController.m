//
//  ppViewController.m
//  SGQRCodeExample
//
//  Created by pptg Guo on 2020/9/7.
//  Copyright © 2020 Sorgle. All rights reserved.
//

#import "ppViewController.h"
extern int pp_code;
//个人信息
NSString * pp_name = @"王麻子";
NSString * pp_number = @"2017213279";
//个人信息end

@interface ppViewController ()

@end

@implementation ppViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fx_name.text = pp_name;
    _fx_number.text = pp_number;
    _lx_name.text = pp_name;
    _lx_number.text = pp_number;
    _lxsp_name1.text = pp_name;
    _lxsp_name2.text = pp_name;
    
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

    NSDate *sqtime = [NSDate dateWithTimeIntervalSinceNow:-47*60*60+78];
    NSString *sqtimeStr = [dateFormatter stringFromDate:sqtime];

    NSDate *shtime = [NSDate dateWithTimeIntervalSinceNow:-24*60*60+7];
    NSString *shtimeStr = [dateFormatter stringFromDate:shtime];

    NSDate *sptime = [NSDate dateWithTimeIntervalSinceNow:-24*60*60+1200];
    NSString *sptimeStr = [dateFormatter stringFromDate:sptime];

    if (pp_code==1) {
        _lxsp_time1.text = sqtimeStr; //申请
        _lxsp_time2.text = shtimeStr; //审核
        _lxsp_time3.text = sptimeStr; //审批
        _lxsp_time4.text = currentDateStr;    //出校

        _lxsp_cftime.text = [[currentDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _lxsp_fxtime.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"];

        _lxsp_time5.text = NULL;
        _lxsp_place.text = NULL;
        
        _sbrk_time1.text = [[currentDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _sbrk_time2.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _sbrk_tim3.text = currentDateStr;
        _sbrk_state.text = @"待返校";
    };
    if(pp_code == 2){
        _lxsp_time1.text = sqtimeStr; //申请
        _lxsp_time2.text = shtimeStr; //审核
        _lxsp_time3.text = sptimeStr; //审批
        _lxsp_time4.text = goDateStr;    //出校

        _lxsp_cftime.text = [[goDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _lxsp_fxtime.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"];

        _lxsp_time5.text = currentDateStr;
        _lxsp_place.text = @"崇文门";
        
        _sbrk_time1.text = [[goDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _sbrk_time2.text = [[backDateStr substringToIndex:13]stringByAppendingString:@":00:00"];
        _sbrk_tim3.text = currentDateStr;
        _sbrk_state.text = @"结束";
    };
//    ppViewController * vc2 = [self.storyboard instantiateViewControllerWithIdentifier:@"view2"];
//    vc2.modalPresentationStyle = 0;
//    [self presentViewController:vc2 animated:YES completion:nil];
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

@end

//
//  ppViewController.h
//  SGQRCodeExample
//
//  Created by pptg Guo on 2020/9/7.
//  Copyright © 2020 Sorgle. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ppViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *fx_name;
@property (weak, nonatomic) IBOutlet UILabel *fx_number;
@property (weak, nonatomic) IBOutlet UILabel *fx_college;

@property (weak, nonatomic) IBOutlet UILabel *lx_name;
@property (weak, nonatomic) IBOutlet UILabel *lx_number;
@property (weak, nonatomic) IBOutlet UILabel *lx_college;

@property (weak, nonatomic) IBOutlet UILabel *lxsp_name1;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_name2;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_time1;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_time2;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_time3;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_time4;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_place;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_time5;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_cftime;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_fxtime;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_leader1;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_leader2;
@property (weak, nonatomic) IBOutlet UILabel *lsxp_smlx;
@property (weak, nonatomic) IBOutlet UILabel *lsxp_fxxj;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_wcdd;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_wcsy;
@property (weak, nonatomic) IBOutlet UILabel *lxsp_number;



@property (weak, nonatomic) IBOutlet UILabel *sbrk_state;
@property (weak, nonatomic) IBOutlet UILabel *sbrk_time1;
@property (weak, nonatomic) IBOutlet UILabel *sbrk_time2;
@property (weak, nonatomic) IBOutlet UILabel *sbrk_tim3;

// 存储界面
@property (weak, nonatomic) IBOutlet UITextField *text_name;        // 姓名
@property (weak, nonatomic) IBOutlet UITextField *text_number;      // 学号
@property (weak, nonatomic) IBOutlet UITextField *text_college;     // 学院
@property (weak, nonatomic) IBOutlet UITextField *text_leader1;     // 辅导员
@property (weak, nonatomic) IBOutlet UITextField *text_leader2;     // 分管领导

@end

NS_ASSUME_NONNULL_END

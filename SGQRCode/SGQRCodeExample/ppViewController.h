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

@property (weak, nonatomic) IBOutlet UILabel *lx_name;
@property (weak, nonatomic) IBOutlet UILabel *lx_number;

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

@property (weak, nonatomic) IBOutlet UILabel *sbrk_state;
@property (weak, nonatomic) IBOutlet UILabel *sbrk_time1;
@property (weak, nonatomic) IBOutlet UILabel *sbrk_time2;
@property (weak, nonatomic) IBOutlet UILabel *sbrk_tim3;

@end

NS_ASSUME_NONNULL_END

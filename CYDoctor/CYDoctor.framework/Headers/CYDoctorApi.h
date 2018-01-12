//
//  CYDoctorApi.h
//  CiYunDoctor
//
//  Created by FDH on 2018/1/8.
//  Copyright © 2018年 centrin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CYDoctorApi : NSObject

+ (BOOL)registerWithPhoneNum:(NSString*)phoneNum doctorName:(NSString*)dName;

+ (void)pushToNavigation:(UINavigationController*)nav;

@end

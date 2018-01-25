//
//  CYDoctorApi.h
//  CiYunDoctor
//
//  Created by FDH on 2018/1/8.
//  Copyright © 2018年 centrin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^CYDLoginSuccessBlock)();
typedef void(^CYDLoginFailBlock)();

typedef enum : NSUInteger {
    CYDEnvironment_Develop,         // 测试环境
    CYDEnvironment_Production,      // 生产环境
} CYDEnvironment;

@interface CYDoctorApi : NSObject


/**
 设置运行环境 /////////注意：该方法非必需执行。如果【未执行】该方法设置，则【默认为生产环境】。执行了则按传入的参数来判断////////

 @param env CYDEnvironment 不能为空
 */
+ (void)setEnvironment:(CYDEnvironment)env;

/**
 根据医生账号和手机号，登录慈云医生APP
 为了避免在进入慈云医生APP时，接口仍在请求中未返回数据，可以考虑提前调用该接口，比如应用启动后或者慈云医生入口页面的初始化时。

 @param account 账号，不能为空
 @param mobile 手机号，不能为空
 */
+ (void)loginWithAccount:(NSString*)account mobile:(NSString*)mobile;


/**
 同loginWithAccount:mobile:方法，只增加了登录接口的回调。

 @param account 账号，不能为空
 @param mobile 手机号，不能为空
 @param successBlock 成功回调方法，可为空
 @param failBlock 失败回调方法，可为空
 */
+ (void)loginWithAccount:(NSString*)account mobile:(NSString*)mobile success:(CYDLoginSuccessBlock)successBlock fail:(CYDLoginFailBlock)failBlock;


/**
 打开慈云医生APP页面

 @param nav 慈云医生APP页面将要压入的导航栏栈，不能为空
 */
+ (void)pushToNavigation:(UINavigationController*)nav;

@end

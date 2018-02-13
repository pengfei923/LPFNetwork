//
//  HSInterface+User.h
//  worker
//
//  Created by 李鹏飞 on 2018/2/12.
//  Copyright © 2018年 hoomsun. All rights reserved.
//

#import "HSInterface.h"

@interface HSInterface (User)

+(void)loginWithUserName:(NSString *)userName Password:(NSString *)password completion:(void (^)(BOOL success, NSInteger errorCode, NSString *message, HSUser *model))completion;

@end

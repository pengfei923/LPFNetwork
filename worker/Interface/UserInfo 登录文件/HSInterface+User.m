//
//  HSInterface+User.m
//  worker
//
//  Created by 李鹏飞 on 2018/2/12.
//  Copyright © 2018年 hoomsun. All rights reserved.
//

#import "HSInterface+User.h"
#import "HSConfig.h"
#import "HSUser.h"
@implementation HSInterface (User)

+(void)loginWithUserName:(NSString *)userName Password:(NSString *)password completion:(void (^)(BOOL success, NSInteger errorCode, NSString *message, HSUser *model))completion {
    NSDictionary *params = @{@"userName":userName,
                             @"password":password};
    [self HS_POSTWithIP:BaseURL mainApiName:mainApiUrl name:@"users/login.do" params:params complation:^(NSInteger errorCode, NSString *errorInfo, id data, NSError *error, NSInteger localErrorStatus, BOOL allSuccess) {
        if (allSuccess) {
            NSDictionary *dict = (NSDictionary *)data;
            HSUser *model = [[HSUser alloc] initWithDictionary:dict error:nil];
            [HSLoginInfo saveLoginInfo:model];
            completion(YES, 0, nil, model);
        }else {
            completion(NO, errorCode, errorInfo, nil);
        }
    }];
}

@end

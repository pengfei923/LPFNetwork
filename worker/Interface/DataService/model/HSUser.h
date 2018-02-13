//
//  HSUser.h
//  worker
//
//  Created by 李鹏飞 on 2018/2/12.
//  Copyright © 2018年 hoomsun. All rights reserved.
//

#import "JSONModel.h"

@interface HSUser : JSONModel

//用户名
@property (nonatomic, copy) NSString<Optional> *userName;
//用户姓名
@property (nonatomic, copy) NSString<Optional> *realName;
//用户id
@property (nonatomic, copy) NSString<Optional> *orgId;
//部级机构
@property (nonatomic, copy) NSString<Optional> *orgName;
//获取用户uuid
@property (nonatomic, copy) NSString<Optional> *uuid;

@end

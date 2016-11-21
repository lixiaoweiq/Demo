//
//  UserModel.m
//  Demo
//
//  Created by apple on 16/10/31.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "UserModel.h"


@implementation UserModel

- (instancetype)initWithName:(NSString *)strName age:(NSUInteger)iage sex:(UserSex)sex
{
    self = [super init];
    if (self) {
        _strName = strName;
        _iage = iage;
        _sex = sex;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
//    UserModel *my = [[self copy] allocWithZone:zone];
    UserModel *copy = [[[self class] allocWithZone:zone] initWithName:_strName age:_iage sex:_sex];
    return copy;
}

@end

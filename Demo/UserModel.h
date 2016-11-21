//
//  UserModel.h
//  Demo
//
//  Created by apple on 16/10/31.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    UserSexMan,
    UserSexWoman,
} UserSex;

@interface UserModel : NSObject<NSCopying>

@property (nonatomic, copy, readonly) NSString *strName;
@property (nonatomic, assign, readonly) NSUInteger iage;
@property (nonatomic, assign, readonly) UserSex sex;

- (instancetype)initWithName:(NSString *)strName age:(NSUInteger)iage sex:(UserSex)sex;
//+ (instancetype)userWithName:(NSString *)strName age:(NSUInteger)iage sex:(UserSex)sex;

@end

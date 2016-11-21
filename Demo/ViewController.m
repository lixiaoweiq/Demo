//
//  ViewController.m
//  Demo
//
//  Created by apple on 16/10/27.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "UserModel.h"

@interface ViewController ()

@property (nonatomic, assign) NSInteger inumber;
@property (nonatomic, copy) UserModel *user;
@property (nonatomic, strong) UserModel *user1;
@property (nonatomic, strong) NSLayoutConstraint *constraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _inumber = 1;
    _inumber = 2;
    _inumber = 3;
    _user1 = [[UserModel alloc]initWithName:@"123" age:12 sex:UserSexMan];
    _user = [_user1 copy];
    
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [self.view  addSubview:view1];
    [view1 addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(UserClicked:)]];
    view1.userInteractionEnabled = YES;
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:64]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:15]];
    [view1 addConstraint:[NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    _constraint = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    [view1 addConstraint:_constraint];
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor redColor];
    [self.view  addSubview:view];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:64]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:15]];
    [view addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    [view addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)UserClicked:(UITapGestureRecognizer  *)sender
{
//    //监听tag
//    NSInteger tag =sender.view.tag;
//    
//    UITableViewCell *cell = (UITableViewCell *)[[sender.view superview] superview];
//    NSIndexPath *indexPath = [_table indexPathForCell:cell];
//    
//    switch (tag)
//    {
//        case TAG_IMG_ADD:
//        {
//            
//        }
//            break;
//    }
//    for (NSLayoutConstraint *constraint in sender.view.constraints)
//    {
//        if (constraint.firstAttribute == NSLayoutAttributeHeight) {
//            constraint.constant += 100;
//        }
//    }
    _constraint.constant += 100;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

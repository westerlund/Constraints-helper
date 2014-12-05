//
//  NSLayoutConstraint.m
//  Wrapp
//
//  Created by Simon Westerlund on 03/12/14.
//  Copyright (c) 2014 Wrapp AB. All rights reserved.
//

#import "NSLayoutConstraint+helper.h"

@implementation NSLayoutConstraint (helper)

+ (NSArray *)wes_constraintWithItem:(id)view1 size:(CGSize)size {
    return @[[self wes_constraintWithItem:view1 attribute:NSLayoutAttributeHeight toItem:nil attribute:NSLayoutAttributeNotAnAttribute constant:size.height],
             [self wes_constraintWithItem:view1 attribute:NSLayoutAttributeWidth toItem:nil attribute:NSLayoutAttributeNotAnAttribute constant:size.width]];
}

+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 {
    return [self wes_constraintWithItem:view1 attribute:attr1 toItem:view2 constant:0];
}

+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 constant:(CGFloat)c {
    return [self constraintWithItem:view1 attribute:attr1 relatedBy:NSLayoutRelationEqual toItem:view2 attribute:attr1 multiplier:1.0 constant:c];
}

+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c {
    return [self constraintWithItem:view1 attribute:attr1 relatedBy:NSLayoutRelationEqual toItem:view2 attribute:attr2 multiplier:1.0 constant:c];
}

@end

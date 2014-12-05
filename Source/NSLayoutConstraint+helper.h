//
//  NSLayoutConstraint.h
//  Wrapp
//
//  Created by Simon Westerlund on 03/12/14.
//  Copyright (c) 2014 Wrapp AB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSLayoutConstraint (helper)

/// Returns an array of constraints to set up views size
+ (NSArray *)wes_constraintWithItem:(id)view1 size:(CGSize)size;

/// Returns a constraint that uses NSLayoutRelationEqual and sets the second attribute the same as the first one and with zero constant
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2;

/// Returns a constraint that uses NSLayoutRelationEqual and sets the second attribute the same as the first one
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 constant:(CGFloat)c;

/// Returns a constraint that uses NSLayoutRelationEqual
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;

@end

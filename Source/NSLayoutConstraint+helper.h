//
//  NSLayoutConstraint.h
//  Wrapp
//
//  Created by Simon Westerlund on 03/12/14.
//  Copyright (c) 2014 Wrapp AB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSLayoutConstraint (helper)

/// Returns an array of constraints to set up a view's size
+ (NSArray *)wes_constraintWithItem:(id)view1 size:(CGSize)size;

/// Returns a constraint with two views that will use have the same relation with that specific attribute
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2;

/// Returns a constraint with two views that will use have the same relation with that specific attribute, however you can now set the constant
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 constant:(CGFloat)c;

/// Returns a constraint with two views that will use the equal relation, however, you're free to set two different attributes and a constant
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;

@end
    
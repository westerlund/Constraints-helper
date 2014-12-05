I got tired of repeatedly writing the same attributes over and over again, so I wrote a small category to help me.

## Usage
These three lines of code
```Objective-C
[someView addConstraint:[NSLayoutConstraint wes_constraintWithItem:anotherView
                                                         attribute:NSLayoutAttributeWidth
                                                            toItem:someView]];
```
is equivalent to
```Objective-C
[someView addConstraint:[NSLayoutConstraint constraintWithItem:anotherView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:someView
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0f
                                                      constant:0.0f]];
```
in which you can see, it’s a lot of repeating values. You're welcome.

And you can even do this
```Objective-C
[someView addConstraints:[NSLayoutConstraint wes_constraintWithItem:anotherView
                                                         size:CGSizeMake(100, 50)]];
```
which is equivalent to
```Objective-C
[someView addConstraint:[NSLayoutConstraint constraintWithItem:anotherView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1.0f
                                                      constant:100.0f]];
                                                      
[someView addConstraint:[NSLayoutConstraint constraintWithItem:anotherView
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeNotAnAttribute
                                                    multiplier:1.0f
                                                      constant:50.0f]];
```
pretty neat huh?

*As you can see*, I only stripped some properties and attributes that are often left blank.

## What else is there?
Well, here are all the available helpers:
```Objective-C
/// Returns an array of constraints to set up a view's size
+ (NSArray *)wes_constraintWithItem:(id)view1 size:(CGSize)size;

/// Returns a constraint with two views that will use have the same relation with that specific attribute
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2;

/// Returns a constraint with two views that will use have the same relation with that specific attribute, however you can now set the constant
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 constant:(CGFloat)c;

/// Returns a constraint with two views that will use the equal relation, however, you're free to set two different attributes and a constant
+ (instancetype)wes_constraintWithItem:(id)view1 attribute:(NSLayoutAttribute)attr1 toItem:(id)view2 attribute:(NSLayoutAttribute)attr2 constant:(CGFloat)c;
```

You can find me on twitter, [@wesslansimon](https://twitter.com/wesslansimon).

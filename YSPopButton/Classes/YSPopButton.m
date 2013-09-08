//
//  U16PopButton.m
//  UISpike
//
//  Created by u16suzu on 2013/09/06.
//  Copyright (c) 2013年 u16suzu. All rights reserved.
//

#import "YSPopButton.h"
#import <BlocksKit.h>
#import "CAKeyframeAnimation+AHEasing.h"
#import "UIImage+JSFlatButton.h"


@interface YSPopButton()
@property BOOL animatingTouchDown;
@property BOOL animatingTouchUp;
@end

@implementation YSPopButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {        
        self.imageView.clipsToBounds = NO;
        self.imageView.contentMode = UIViewContentModeCenter;
        __block YSPopButton *weakSelf = self;
        
        // When touch down button
        [self addEventHandler:^(id sender) {
            if(!weakSelf.animatingTouchDown)
            {
                CALayer *layer= weakSelf.layer;
                [CATransaction begin];
                [CATransaction setValue:@0.1 forKey:kCATransactionAnimationDuration];
                CAAnimation *scale =
                [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"
                                                 function:CubicEaseOut
                                                fromValue:1.0
                                                  toValue:1.5];
                scale.removedOnCompletion = NO;
                [scale setFillMode:kCAFillModeForwards];
                [layer addAnimation:scale forKey:@"position"];
                [CATransaction setCompletionBlock:^{
                    CAAnimation *ani = [layer animationForKey:@"transform.scale"];
                    if(ani){
                        [layer removeAnimationForKey:@"transform.scale"];
                    }else{
                        weakSelf.animatingTouchDown = NO;
                    }
                }];
                
                [CATransaction commit];
                
                weakSelf.animatingTouchDown = YES;
            }
        } forControlEvents:UIControlEventTouchDown];
        

        // When touch up button
        [self addEventHandler:^(id sender) {
            NSLog(@"%@", @"touch up inside");
            if(!weakSelf.animatingTouchUp)
            {
                CALayer *layer= weakSelf.layer;
                [CATransaction begin];
                [CATransaction setValue:@1 forKey:kCATransactionAnimationDuration];
                CAAnimation *scale =
                [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"
                                                 function:ElasticEaseOut
                                                fromValue:1.5
                                                  toValue:1.0];
                [layer addAnimation:scale forKey:@"position"];
                [CATransaction setCompletionBlock:^{
                    CAAnimation *ani = [layer animationForKey:@"transform.scale"];
                    if(ani){
                        [layer removeAnimationForKey:@"transform.scale"];
                    }else{
                        weakSelf.animatingTouchUp = NO;
                    }
                }];
                [CATransaction commit];
                
                weakSelf.animatingTouchUp = YES;
            }                        
        } forControlEvents:UIControlEventTouchUpInside]; 
    }
    return self;
}

- (void)setFlatImage:(UIImage *)image :(UIColor *)color
{
    image = [image imageMaskWithColor:color
                         shadowOffset:CGPointMake(0.0f, 0.0f)];
    
    [self setImage:image forState:UIControlStateNormal];    
}

@end

//
//  UIView+Extention.m
//  SimpleCam
//
//  Created by Lyman Li on 2019/5/18.
//  Copyright © 2019年 Lyman Li. All rights reserved.
//

#import "UIView+Extention.h"

@implementation UIView (Extention)

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated completion:(void (^)(void))completion {
    CGFloat beginAlpha = self.alpha;
    CGFloat endAlpha = hidden ? 0 : 1;
    if (beginAlpha == endAlpha) {
        if (completion) {
            completion();
        }
        return;
    }
    
    if (!animated) {
        self.alpha = endAlpha;
        if (completion) {
            completion();
        }
        return;
    }
    
    [UIView animateWithDuration:0.25f animations:^{
        self.alpha = endAlpha;
    } completion:^(BOOL finished) {
        if (completion) {
            completion();
        }
    }];
}

@end

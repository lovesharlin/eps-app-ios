//
//  HBMenuButton.h
//  EPS
//
//  Created by 郝斌 on 16/4/8.
//  Copyright © 2016年 hainx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HBMenuButton : UIButton

@property (nonatomic, strong) NSString *badgeValue;
@property (nonatomic, strong) NSString *btnCode;

- (void)setIcon:(NSString *)iconName forState:(UIControlState)state;

- (void)setIconColor:(UIColor *)color forState:(UIControlState)state;

@end

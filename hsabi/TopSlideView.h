//
//  TopSlideView.h
//  hsabi
//
//  Created by liuping on 2017/3/16.
//  Copyright © 2017年 刘平. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopSlideView : UIView
@property (nonatomic, strong) UIButton *leftButton;

@property (nonatomic, strong) UIButton *rightButton;

@property (nonatomic, strong) UIImageView *fillImageView;

@property (nonatomic, strong) UIImageView *choseImageView;

@property (nonatomic, strong) UIColor *choseColor;
@property (nonatomic, strong) UIColor *notchoseColor;
@property (nonatomic, assign) float buttonWidth;
@property (nonatomic, assign) float lineWidth;
- (void)ChoseColor:(UIColor *)choseColor notChoseColor:(UIColor *)notChoseColor lineColor:(UIColor *)lineColor choseLineColor:(UIColor *)choseLineColor linewidth:(float)lineWidth firstButtonTittle:(NSString *)firstButtonTittle secondButtonTittle:(NSString *)secondButtonTittle buttonWidth:(float)buttonWidth;

@end

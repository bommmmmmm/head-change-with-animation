//
//  TopSlideView.m
//  hsabi
//
//  Created by liuping on 2017/3/16.
//  Copyright © 2017年 刘平. All rights reserved.
//

#import "TopSlideView.h"

@implementation TopSlideView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)ChoseColor:(UIColor *)choseColor notChoseColor:(UIColor *)notChoseColor lineColor:(UIColor *)lineColor choseLineColor:(UIColor *)choseLineColor linewidth:(float)lineWidth firstButtonTittle:(NSString *)firstButtonTittle secondButtonTittle:(NSString *)secondButtonTittle buttonWidth:(float)buttonWidth {

    
    self.buttonWidth = buttonWidth;
    self.lineWidth = lineWidth;
    
    [self.leftButton setTitle:firstButtonTittle forState:(UIControlStateNormal)];
    [self.leftButton setTitleColor:choseLineColor forState:(UIControlStateNormal)];
    [self.rightButton setTitle:secondButtonTittle forState:(UIControlStateNormal)];
    [self.rightButton setTitleColor:notChoseColor forState:(UIControlStateNormal)];
    self.fillImageView.backgroundColor = lineColor;
    self.choseImageView.backgroundColor = choseLineColor;
    
    self.choseColor = choseColor;
    self.notchoseColor = notChoseColor;
    
    
    [self addSubview:self.leftButton];
    [self addSubview:self.rightButton];
    [self addSubview:self.fillImageView];
    [self addSubview:self.choseImageView];
    
}

- (UIImageView *)fillImageView {
    if (!_fillImageView) {
        _fillImageView = [[UIImageView alloc] init];
        _fillImageView.frame = CGRectMake(0, self.frame.size.height - self.lineWidth, self.frame.size.width, self.lineWidth);
    }
    return _fillImageView;
}


- (UIImageView *)choseImageView {
    if (!_choseImageView) {
        _choseImageView = [[UIImageView alloc] init];
        _choseImageView.frame = CGRectMake(CGRectGetMinX(self.leftButton.frame), self.frame.size.height - self.lineWidth, self.rightButton.frame.size.width, self.lineWidth);
    }
    return _choseImageView;
}



- (UIButton *)leftButton {
    if (!_leftButton) {
        _leftButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _leftButton.frame = CGRectMake((self.frame.size.width/4) - (self.buttonWidth/2), 0, self.buttonWidth, 30);
        
        [_leftButton addTarget:self action:@selector(leftButtonAction) forControlEvents:(UIControlEventTouchUpInside)];
        
    }
    return _leftButton;
}
- (UIButton *)rightButton {
    if (!_rightButton) {
        _rightButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _rightButton.frame = CGRectMake((self.frame.size.width * 0.75) - (self.buttonWidth/2), 0, self.buttonWidth, 30);
        [_rightButton addTarget:self action:@selector(rightButtonAction) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _rightButton;
}

- (void)leftButtonAction {
    
    
    [self.leftButton setTitleColor:self.choseColor forState:(UIControlStateNormal)];
    [self.rightButton setTitleColor:self.notchoseColor forState:(UIControlStateNormal)];
    
    [UIView animateWithDuration:0.3 animations:^{
        CGRect rect = self.choseImageView.frame;
        rect.origin.x = CGRectGetMinX(self.leftButton.frame);
        self.choseImageView.frame = rect;
    }];
}
- (void)rightButtonAction {
    
    
    [self.leftButton setTitleColor:self.notchoseColor forState:(UIControlStateNormal)];
    [self.rightButton setTitleColor:self.choseColor forState:(UIControlStateNormal)];
    [UIView animateWithDuration:0.3 animations:^{
        CGRect rect = self.choseImageView.frame;
        rect.origin.x = CGRectGetMinX(self.rightButton.frame);
        self.choseImageView.frame = rect;
    }];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

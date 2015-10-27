//
//  SecAutoButton.m
//  按钮自定义效果Demo
//
//  Created by 孙云 on 15/10/27.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "SecAutoButton.h"

@implementation SecAutoButton


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //在构造的时候有作用
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.imageView.layer.cornerRadius = 15;
        self.imageView.layer.masksToBounds = YES;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    
    CGFloat x = (contentRect.size.width -(contentRect.size.height -30))/2;
    CGFloat y = -30;
    return CGRectMake(x,y,contentRect.size.width,contentRect.size.height);
}
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{

    CGFloat x = (contentRect.size.width -(contentRect.size.height -30))/2;
    CGFloat y = 30;
    return CGRectMake(x,y,contentRect.size.height -30,contentRect.size.height -30);

}

@end

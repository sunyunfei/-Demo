//
//  AutoButton.m
//  按钮自定义效果Demo
//
//  Created by 孙云 on 15/10/27.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "AutoButton.h"

@implementation AutoButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // 1、顶部图片
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat x = (contentRect.size.width -(contentRect.size.height -30))/2;
    CGFloat y = contentRect.size.height - 30;
    return CGRectMake(x,y,contentRect.size.width,30);

   }
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat x = (contentRect.size.width -(contentRect.size.height -30))/2;
    CGFloat y = 0;
    return CGRectMake(x,y,contentRect.size.height -30,contentRect.size.height -30);

}

@end

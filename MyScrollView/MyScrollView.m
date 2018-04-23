//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Brian Vo on 2018-04-23.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewScroll:)];
        [self addGestureRecognizer:_panGesture];
    }
    return self;
}

-(void)viewScroll:(UIPanGestureRecognizer *)sender {
    CGPoint translationView = [sender translationInView:self];
    
    NSLog(@"translation %@", NSStringFromCGPoint(translationView));
    
    CGFloat myScrollViewY = self.bounds.origin.y;
    
    
    self.bounds = CGRectMake(self.bounds.origin.x,
                                          myScrollViewY - translationView.y,
                                          self.bounds.size.width,
                                          self.bounds.size.height);
    
    [sender setTranslation:CGPointZero inView:self];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

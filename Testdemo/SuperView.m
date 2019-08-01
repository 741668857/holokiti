//
//  SuperView.m
//  Testdemo
//
//  Created by Civet on 2019/7/31.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

-(void)createView{
    _view01=[[UIView alloc]init];
    _view01.frame=CGRectMake(0, 0, 40, 40);
    
    _view02=[[UIView alloc]init];
    _view02.frame=CGRectMake(self.bounds.size.width-40, 0, 40, 40);
    
    _view03=[[UIView alloc]init];
    _view03.frame=CGRectMake(0, self.bounds.size.height-40, 40, 40);
    
    _view04=[[UIView alloc]init];
    _view04.frame=CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
    
    _view01.backgroundColor=[UIColor orangeColor];
    _view02.backgroundColor=[UIColor orangeColor];
    _view03.backgroundColor=[UIColor orangeColor];
    _view04.backgroundColor=[UIColor orangeColor];
    
    [self addSubview:_view01];
    [self addSubview:_view02];
    [self addSubview:_view03];
    [self addSubview:_view04];
    
    _view02.autoresizingMask=UIViewAutoresizingFlexibleLeftMargin;
    _view03.autoresizingMask=UIViewAutoresizingFlexibleTopMargin;
    _view04.autoresizingMask=UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleLeftMargin;
    
    
    
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

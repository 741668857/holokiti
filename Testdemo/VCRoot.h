//
//  VCRoot.h
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController<NSURLConnectionDelegate,NSURLConnectionDataDelegate>
{
    NSURLConnection *_connect;
    NSMutableData *_data;
}





@end

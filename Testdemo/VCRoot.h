//
//  VCRoot.h
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray* _arrayData;//声明一个数据源
    
    UIBarButtonItem *_btnEdit;
    UIBarButtonItem *_btnFinish;
    UIBarButtonItem *_btnDelete;
    BOOL _isEdit;
}




@end

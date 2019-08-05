//
//  VCRoot.m
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCRoot.h"





@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    //自动调整子视图大小
    _tableView.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    _arrayData=[[NSMutableArray alloc]init];
    for(int i='A';i<='Z';i++){
        NSMutableArray* arraysmall=[[NSMutableArray alloc]init];
        for(int j=1;j<=5;j++){
        NSString *str=[NSString stringWithFormat:@" %c%d",i,j];
        [arraysmall addObject:str];
    }
        [_arrayData addObject:arraysmall];
    }
   
    [self.view addSubview:_tableView];
    [self createBtn];

}

-(void)createBtn{
    
    _isEdit=NO;
    _btnEdit=[[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];
    _btnDelete=[[UIBarButtonItem alloc]initWithTitle:@"删除" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
    _btnFinish=[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
    
    self.navigationItem.rightBarButtonItem=_btnEdit;
    
}

-(void)pressEdit{
    _isEdit=YES;
    self.navigationItem.rightBarButtonItem=_btnFinish;
    [_tableView setEditing:YES];
    self.navigationItem.leftBarButtonItem=_btnDelete;
}
-(void)pressDelete{
    
}

-(void)pressFinish{
    _isEdit=NO;
    self.navigationItem.rightBarButtonItem=_btnEdit;
    [_tableView setEditing:NO];
    self.navigationItem.leftBarButtonItem=nil;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger numrow=[[_arrayData objectAtIndex:section]count];
    return numrow;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _arrayData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* cellstr=@"cell";
    UITableViewCell* cell=[_tableView dequeueReusableCellWithIdentifier:cellstr];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellstr];
    }
    cell.textLabel.text=_arrayData[indexPath.section][indexPath.row];
    return cell;
}


- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [_arrayData removeObjectAtIndex:indexPath.row];
    [_tableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{\
    NSLog(@"选中单元格");
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"取消选择单元格，%ld,%ld",(long)indexPath.section,(long)indexPath.row);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

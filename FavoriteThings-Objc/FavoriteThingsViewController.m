//
//  FavoriteThingsViewController.m
//  FavoriteThings-Objc
//
//  Created by Ross McIlwaine on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsViewController.h"
#import "FavoriteThingsDataSource.h"

@interface FavoriteThingsViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) FavoriteThingsDataSource *dataSource;

@end

@implementation FavoriteThingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    
    self.dataSource = [FavoriteThingsDataSource new];
    self.tableView.dataSource = self.dataSource;
    
    [self.dataSource registerTableView:self.tableView];
    
    [self.view addSubview:self.tableView];
    
    //above line is - telling what cells it can give us from identifier we used "Cell"
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  //  return [self favoriteThings].count;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
//    if(!cell) {
     //   cell = [UITableViewCell new];
 //   }
    
 //   cell.textLabel.text = self.favoriteThings[indexPath.row];
    
 //   return cell;
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//- (NSArray *)favoriteThings {
 //   return @[@"Breakfast", @"Food", @"DevMountain", @"Tesla", @"Skiing"];
//}

@end

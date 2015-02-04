//
//  FavoriteThingsDataSource.m
//  FavoriteThings-Objc
//
//  Created by Ross McIlwaine on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsDataSource.h"

@interface FavoriteThingsDataSource () 

@property (nonatomic, strong) UITableView *tableView;

@end


@implementation FavoriteThingsDataSource

- (void)registerTableView:(UITableView *)tableView
{
    self.tableView = tableView;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text = [self favoriteThings][indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self favoriteThings].count;
}


- (NSArray *)favoriteThings {
return @[@"Breakfast", @"Food", @"DevMountain", @"Tesla", @"Skiing"];
}


@end

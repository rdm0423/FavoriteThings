//
//  FavoriteThingsDataSource.h
//  FavoriteThings-Objc
//
//  Created by Ross McIlwaine on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

@import UIKit;

#import <Foundation/Foundation.h>  // can also be written as @import foundation;


@interface FavoriteThingsDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

@end

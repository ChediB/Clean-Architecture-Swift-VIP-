//
//  DataManager.swift
//  ViperApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation

struct DataManager<DataStoreType: DataSource> where DataStoreType.DataType == Feed {
    private let dataSource: DataStoreType
    
    init(dataSource: DataStoreType) {
        self.dataSource = dataSource
    }
    
    func fetchFeeds(for user: User, completion: @escaping ([Feed]) -> ()) {
        dataSource.getFeeds(for: user) { feeds in
            completion(feeds)
        }
    }
}

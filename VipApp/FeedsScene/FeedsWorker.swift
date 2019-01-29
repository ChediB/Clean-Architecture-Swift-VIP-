//
//  FeedsWorker.swift
//  VipApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation

//MARK: Worker
class FeedsWorker {
    private let dataManager = DataManager(dataSource: FeedService())
    
    func fetchFeeds(for user: User, completion: @escaping ([Feed]) -> ()) {
        dataManager.fetchFeeds(for: user) { (feeds) in
            completion(feeds)
        }
    }
}

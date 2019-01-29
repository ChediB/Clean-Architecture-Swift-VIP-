//
//  DataSource.swift
//  ViperApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation

//MARK: DataSource Interface`
protocol DataSource {
    associatedtype DataType = Feed
    func getFeeds(for user: User, completion: @escaping ([DataType]) -> ())
}

//MARK: Data Sources

class FeedService: DataSource {
    func getFeeds(for user: User, completion: @escaping ([Feed]) -> ()) {
        let feeds: [Feed] = []
        completion(feeds)
    }
}

class CloudStore: DataSource {
    func getFeeds(for user: User, completion: @escaping ([Feed]) -> ()) {
        let feeds: [Feed] = []
        completion(feeds)
    }
}

class CacheStore: DataSource {
    func getFeeds(for user: User, completion: @escaping ([Feed]) -> ()) {
        let feeds: [Feed] = []
        completion(feeds)
    }
}

//
//  FeedsViewModel.swift
//  ViperApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation

//MARK: Models

struct Feed {
    var title: String
    var author: String
    var publishedOn: String
}

struct FeedsFetchRequest {
    var email: String?
    var password: String?
}

struct FeedsFetchResponse {
    var feeds: [Feed]?
    var error: String?
}

struct FeedsViewModel {
    var feeds: [Feed]?
    var error: String?
}

struct User {
    let email: String
    let password: String
}

//MARK: Error Handle
enum FeedsFetchError: Error {
    case cannotFetch(msf: String)
}

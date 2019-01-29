//
//  FeedsInteractor.swift
//  VipApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation

//MARK: Interactor Interface
protocol FeedsInteractorInput {
    func fetchFeeds(_ request: FeedsFetchRequest)
}

protocol FeedsInteractorOutput {
    func presentFeeds(_ response: FeedsFetchResponse)
}

//MARK: Interactor
class FeedsInteractor: FeedsInteractorInput {
    
    var output: FeedsInteractorOutput!
    var worker: FeedsWorker!
    
    func fetchFeeds(_ request: FeedsFetchRequest) {
        
        worker = FeedsWorker()
        let user = User(email: request.email!, password: request.password!)
        worker.fetchFeeds(for: user) { (feeds) in
            let response = FeedsFetchResponse(feeds: feeds, error: nil)
            self.output.presentFeeds(response)
        }
    }
}

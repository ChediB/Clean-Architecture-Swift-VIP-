//
//  FeedsPresenter.swift
//  VipApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation

//MARK: Presenter Interface
protocol FeedsPresenterInput {
    func presentFeeds(_ response: FeedsFetchResponse)
}

protocol FeedsPresenterOutput: class {
    func displayFeeds(_ viewModel: FeedsViewModel)
    func displayError(_ viewModel: FeedsViewModel)
}

//MARK: Presenter
class FeedsPresenter: FeedsPresenterInput {
    weak var output: FeedsPresenterOutput!
    
    func presentFeeds(_ response: FeedsFetchResponse) {
        processPresentation(for: response.feeds!)
    }
    
    private func processPresentation(for feeds: [Feed]) {
        //perform data formatting if needed
        let viewModel = FeedsViewModel(feeds: feeds, error: nil)
        output.displayFeeds(viewModel)
    }
}

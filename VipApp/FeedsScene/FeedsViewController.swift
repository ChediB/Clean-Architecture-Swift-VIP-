//
//  ViewController.swift
//  ViperApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import UIKit

// MARK: View Interface
protocol FeedsViewControllerInput {
}

protocol FeedsViewControllerOutput {
    func fetchFeeds(_ request: FeedsFetchRequest)
}

// MARK: View
class FeedsViewController: UIViewController {
    
    var output: FeedsViewControllerOutput!
    var router: FeedsRouter!
    var feeds: [Feed] = []
    
    // MARK: Object lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        FeedsConfigurator.instance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFeedsOnLoad()
    }
    
    // MARK: private methods
    fileprivate func fetchFeedsOnLoad() {
        let request = FeedsFetchRequest(email: "chedi.baccari@hotmail.com", password: "pwD123!")
        output.fetchFeeds(request)
    }
}

//MARK: ViewController Interface Conformance
extension FeedsViewController: FeedsViewControllerInput {
    
    func displayFeeds(_ viewModel: FeedsViewModel) {
        if let feeds = viewModel.feeds {
            refreshUI(feeds: feeds)
        }
    }
    
    func displayError(_ viewModel: FeedsViewModel) {
        if let error = viewModel.error {
            print(error)
        }
    }
    
    fileprivate func refreshUI(feeds: [Feed]) {
        self.feeds = feeds
        // update UI
    }
}


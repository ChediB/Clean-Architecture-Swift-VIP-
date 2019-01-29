//
//  FeedsConfigurator.swift
//  ViperApp
//
//  Created by Chedi BACCARI on 28/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation
import UIKit

extension FeedsViewController: FeedsPresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.router.passDataToNextScene(segue)
    }
    
}
extension FeedsInteractor: FeedsViewControllerOutput {}
extension FeedsPresenter: FeedsInteractorOutput {}

class FeedsConfigurator {
    
    // MARK Object lifecycle
    static let instance = FeedsConfigurator()
    private init() {}
    
    // MARK: Configuration
    func configure(viewController: FeedsViewController) {
        let router = FeedsRouter()
        router.viewController = viewController
        
        let presenter = FeedsPresenter()
        presenter.output = viewController
        
        let interactor = FeedsInteractor()
        interactor.output = presenter
        
        viewController.output = interactor
        viewController.router = router
    }
}

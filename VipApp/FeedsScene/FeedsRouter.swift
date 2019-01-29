//
//  FeedsRouter.swift
//  VipApp
//
//  Created by Chedi BACCARI on 29/01/2019.
//  Copyright © 2019 Chedi BACCARI. All rights reserved.
//

import Foundation
import UIKit

//MARK: Router
protocol FeedsRouterInput {
    func navigateToSomewhere()
}

class FeedsRouter: FeedsRouterInput {
    
    weak var viewController: FeedsViewController!
    
    //MARK: Navigation
    
    func navigateToSomewhere() {
        //push someWhereViewController
    }
    
    //MARK: Communication
    
    func passDataToNextScene(_ segue: UIStoryboardSegue) {
        if segue.identifier == "somewhereSceneId" {
            passDataToSomewhereScene(segue)
        }
    }
    
    fileprivate func passDataToSomewhereScene(_ segue: UIStoryboardSegue) {
        // let somewhererViewController = seqgue.destinationViewController as! SomeWhereViewController
        // somewhereViewController.output.name = viewController.output.name
    }
}

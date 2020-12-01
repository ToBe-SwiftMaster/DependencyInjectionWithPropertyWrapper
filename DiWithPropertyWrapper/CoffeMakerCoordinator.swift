//
//  CoffeMakerCoordinator.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/12/01.
//

import UIKit

class CoffeMakerCoordinator {
//    @Inject var viewModel: CoffeeMakerViewModel
    var navigationController: UINavigationController
    
    
    init(navi: UINavigationController) {
        self.navigationController = navi
    }
    
    func start() {
        let coffeVC = CoffeeMakerViewController.create(closure: next)
        self.navigationController.pushViewController(coffeVC, animated: false)
    }
    
    func next(item: Int) {
        let nextVC = NextViewController.crete(item: item)
        self.navigationController.pushViewController(nextVC, animated: true)
    }
}

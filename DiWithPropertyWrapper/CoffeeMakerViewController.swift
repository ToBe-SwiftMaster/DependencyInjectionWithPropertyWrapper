//
//  ViewController.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

import UIKit

class CoffeeMakerViewController: UIViewController {

    let viewModel = CoffeeMakerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.makeCoffee()
    }


}


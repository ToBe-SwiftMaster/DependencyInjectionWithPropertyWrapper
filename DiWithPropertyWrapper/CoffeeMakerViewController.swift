//
//  ViewController.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

import UIKit

//protocol CoffeeMakerViewControllerType: Dependency {
//    func next(item: Int)
//}

class CoffeeMakerViewController: UIViewController {
    
    @Inject var viewModel: CoffeeMakerViewModel
    var closure: ((Int) -> Void)?

//    let viewModel = CoffeeMakerViewModel()
    
    static func create(closure: @escaping (Int) -> Void) -> CoffeeMakerViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CoffeeMakerViewController") as! CoffeeMakerViewController
        vc.closure = closure
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
 
    
    @IBAction func button(_ sender: Any) {
        viewModel.fetch(completion: { item in
            self.closure?(item)
        })
    }
    
    
    


}


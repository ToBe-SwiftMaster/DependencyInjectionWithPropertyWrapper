//
//  NextViewController.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/12/01.
//

import UIKit

class NextViewController: UIViewController {
    var item: Int = 0

    
    static func crete(item: Int) -> NextViewController {
        let vc = NextViewController()
        vc.item = item
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do anyadditional setup after loading the view.
    }
    

}

//
//  CustomerViewModel.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/12/01.
//

import Foundation

protocol CustomViewModelType: Dependency {
    func fetch(completion: (Int) -> Void)
}

class CustomerViewModel: CustomViewModelType {
    @Inject var heater: ElectricHeater
    @Inject var pump: Pump
    @Inject var apiService: CustomerApiService
    
    func makeCoffee() {
        
        heater.serve()
        pump.serve()
        
        print("Making Coffee!")
    }

    func registerCustomer() {
        
        apiService.fetch()
        apiService.insert()
        
        print("Resgistering New Customer!")
    }
    
    func fetch(completion: (Int) -> Void) {
        completion(5)
    }
}

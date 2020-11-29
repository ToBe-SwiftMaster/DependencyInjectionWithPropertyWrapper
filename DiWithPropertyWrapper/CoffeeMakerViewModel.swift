//
//  CoffeeMakerViewModel.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

class CoffeeMakerViewModel {
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
}


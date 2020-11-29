//
//  CoffeeMakerViewModel.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

class CoffeeMakerViewModel {
    @Inject var heater: ElectricHeater
    @Inject var pump: Pump
    
    func makeCoffee() {
        self.heater.serve()
        self.pump.serve()
        
        print("Making Coffee!")
    }
}

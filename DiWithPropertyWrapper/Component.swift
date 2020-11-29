//
//  Component.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

protocol Component {
    func serve()
}

struct Pump: Component {
    func serve() {
        pump()
    }
    
    func pump() {
        print("pumping...")
    }
}

struct ElectricHeater: Component {
    func serve() {
        heat()
    }
    
    func heat() {
        print("heating...")
    }
}

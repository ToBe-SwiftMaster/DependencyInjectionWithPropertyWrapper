//
//  Components.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

protocol Dependency { }

protocol Component: Dependency {
    func serve()
}

protocol Service: Dependency {
    func fetch()
    func insert()
}

struct Pump: Component {
    func serve() {
        pump()
    }
    
    private func pump() {
        print("pumping...")
    }
}

struct ElectricHeater: Component {
    func serve() {
        heat()
    }
    
    private func heat() {
        print("heating...")
    }
}

struct CustomerApiService: Service {
    func fetch() {
        fetchCustomers()
    }
    
    func insert() {
        insertCustomer()
    }
    
    private func fetchCustomers() {
        print("Fetching Customers...")
    }
    
    private func insertCustomer() {
        print("Insert New Customer...")
    }
}

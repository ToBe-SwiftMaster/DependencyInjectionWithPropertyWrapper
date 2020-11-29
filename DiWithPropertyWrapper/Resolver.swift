//
//  Resolver.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

class Resolver {
    private(set) static var shared = Resolver()
    var factoryDict: [String: () -> Component] = [:]
    
    func add<T: Component>(_ factory: @escaping () -> T) {
        factoryDict[String(describing: T.self)] = factory
    }
    
    func resolve<T: Component>(_ type: T.Type) -> T {
        return factoryDict[String(describing: type)]!() as! T
    }
}


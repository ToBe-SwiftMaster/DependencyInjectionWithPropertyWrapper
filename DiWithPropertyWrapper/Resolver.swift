//
//  Resolver.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

class Resolver {
    private(set) static var shared = Resolver()
    var factoryDict: [String: () -> Component] = [:]
    
    func add(type: Component.Type, _ factory: @escaping () -> Component) {
        factoryDict[String(describing: type.self)] = factory
    }
    
    func resolve<Component>(_ type: Component.Type) -> Component {
        guard let component: Component = factoryDict[String(describing: type.self)]?() as? Component else {
            fatalError("You didn't add \(type) component.")
        }
        
        return component
    }
}

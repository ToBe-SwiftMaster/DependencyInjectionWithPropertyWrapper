//
//  Inject.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

@propertyWrapper
struct Inject<Component> {
    var component: Component
    
    init() {
        self.component = Resolver.shared.resolve(Component.self)
    }
    
    var wrappedValue: Component {
        get {
            return component
        }
        mutating set {
            component = newValue
        }
    }
}

//
//  Inject.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

@propertyWrapper
struct Inject<T: Component> {
    var component: T
    
    init() {
        self.component = Resolver.shared.resolve(T.self)
    }
    
    var wrappedValue: T {
        get {
            return component
        }
        mutating set {
            component = newValue
        }
    }
}

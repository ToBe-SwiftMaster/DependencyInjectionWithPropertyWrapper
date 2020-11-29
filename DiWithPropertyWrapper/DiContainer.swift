//
//  DiContainer.swift
//  DiWithPropertyWrapper
//
//  Created by devming on 2020/11/29.
//

class DiContainer {
    @discardableResult
    init(_ addDependencyHandler: () -> Void) {
        addDependencyHandler()
    }
}

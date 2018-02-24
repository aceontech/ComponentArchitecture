//
//  Component.swift
//  ComponentArchitecture
//
//  Created by Alex on 21/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation
import UIKit
import ObjectiveC

// MARK - Component

public protocol Component: class {
    associatedtype Rendering
    associatedtype State
    associatedtype Props

    var state: State { get set }

    init(props: Props)
    func render() -> Rendering
}

// MARK: - Component properties

private var stateKey: UInt8 = 0
private var rendererKey: UInt8 = 0

extension Component {

    public var state: State {
        get {
            return objc_getAssociatedObject(self, &stateKey) as! State
        }
        set {
            objc_setAssociatedObject(self, &stateKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            renderer?.render()
        }
    }

    internal var renderer: ComponentRenderer? {
        get {
            return objc_getAssociatedObject(self, &rendererKey) as? ComponentRenderer
        }
        set {
            objc_setAssociatedObject(self, &rendererKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}



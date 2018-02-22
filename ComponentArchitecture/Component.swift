//
//  Component.swift
//  ComponentArchitecture
//
//  Created by Alex on 21/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation
import UIKit

public protocol Component {
    associatedtype Renderable
    associatedtype State
    associatedtype Props

    var state: State { get set }
    var props: Props { get set }

    func render() -> Renderable
}

// TODO: Make internal again
public class UIViewComponentRenderer<C> where C: Component, C.Renderable: UIView {
    private let component: C
    private weak var view: UIView?

    public init(component: C, in view: UIView) {
        self.component = component
        self.view = view
    }

    public func render() {
        let subview = component.render()

        subview.removeFromSuperview()
        view?.addSubview(subview)

        subview.layer.borderWidth = 1
        subview.sizeToFit()
        subview.frame.origin = .init(x: 100, y: 100)
    }
}

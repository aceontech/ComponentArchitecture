//
//  AnyUIViewComponent.swift
//  ComponentArchitecture
//
//  Created by Alex on 25/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public class AnyUIViewComponent: Component {
    private var _render: (() -> UIView)?

    public typealias State = Void

    public init<C>(_ component: C) where C: Component, C.Rendering: UIView {
        _render = component.render
    }

    public required init(props: Void) {
        state = ()
    }

    public func render() -> UIView {
        return _render!()
    }

    public static func any<C>(_ component: C) -> AnyUIViewComponent where C: Component, C.Rendering: UIView {
        return AnyUIViewComponent(component)
    }
}

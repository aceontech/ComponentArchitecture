//
//  UIViewComponentRenderer.swift
//  ComponentArchitecture
//
//  Created by Alex on 24/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public class UIKitComponentRenderer<C, L>: ComponentRenderer where C: Component, C.Renderable: UIView, L: ComponentLayout {
    private let component: C
    private weak var host: UIView?
    private var cache: UIView?
    private let layout: L

    public init(component: C, in host: UIView, layout: L) {
        self.component = component
        self.host = host
        self.layout = layout

        component.renderer = self
    }

    public func render() {
        self.cache?.removeFromSuperview()

        let view = component.render()
        self.cache = view

        host?.addSubview(view)
        layout.applyLayout(to: view as! L.ComponentRendering, in: host as! L.ComponentRenderingHost)
    }
}

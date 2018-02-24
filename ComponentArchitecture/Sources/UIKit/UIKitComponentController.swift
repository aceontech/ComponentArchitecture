//
//  UIKitComponentController.swift
//  ComponentArchitecture
//
//  Created by Alex on 24/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public class UIKitComponentController<C>: UIViewController where C: Component, C.Renderable: UIView {
    private let component: C

    public init(with component: C) {
        self.component = component
        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented. Use init(with:) instead.")
    }

    public override func viewDidLoad() {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(container)
        topLayoutGuide.bottomAnchor.constraint(equalTo: container.topAnchor).isActive = true
        bottomLayoutGuide.topAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true

        let renderer = UIKitComponentRenderer<C, UIKitComponentAnchorLayout>(component: component, in: container, layout: .init(pinTo: [ .left, .top, .right ]))
        renderer.render()
    }
}

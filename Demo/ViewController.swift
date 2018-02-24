//
//  ViewController.swift
//  Demo
//
//  Created by Alex on 21/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import UIKit
import ComponentArchitecture

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabelComponent(props: .init(text: "UILabelComponent", textAlignment: .center))

        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = .yellow
        view.addSubview(container)
        topLayoutGuide.bottomAnchor.constraint(equalTo: container.topAnchor).isActive = true
        bottomLayoutGuide.topAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: container.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: container.rightAnchor).isActive = true

        let renderer = UIKitComponentRenderer(component: label, in: container, layout: UIKitComponentAnchorLayout(pinTo: [ .left, .top, .right ]))
        renderer.render()
    }
}

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

        let label = UILabelComponent(props: .init(
            text: "UILabelComponent",
            textAlignment: .center
        ))

        let container = UIKitComponentController(with: label)
        addChildViewController(container)
        view.addSubview(container.view)
    }
}

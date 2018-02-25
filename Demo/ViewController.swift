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

        let label1 = UILabelComponent(props: .init(
            text: "Label 1",
            backgroundColor: .yellow
        ))

        let label2 = UILabelComponent(props: .init(
            text: "Label 2",
            backgroundColor: .cyan
        ))

        let stack = UIStackViewComponent(props: .init(
            children: [ label1, label2 ]
        ))

        let container = UIKitComponentController(with: stack)
        addChildViewController(container)
        view.addSubview(container.view)
    }
}

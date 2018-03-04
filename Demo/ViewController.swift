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

        let container = UIKitComponentController(with:
            CustomComponent(props: ())
        )
        addChildViewController(container)
        view.addSubview(container.view)
    }
}

class CustomComponent: Component {
    typealias State = Void
    required init(props: Void) {}

    func render() -> UIView {
        return .stack(children: [
            .label(.init(text: "Label 1", backgroundColor: .yellow)),
            .stack(.init(axis: .horizontal), children: [
                .label(.init(text: "Label 2", backgroundColor: .cyan)),
                .label(.init(text: "Label 3", backgroundColor: .orange))
            ])
        ])
    }
}

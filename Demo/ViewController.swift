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

//        let label1 = UILabelComponent(props: .init(
//            text: "Label 1",
//            textAlignment: .center,
//            backgroundColor: .yellow
//        ))
//
//        let label2 = UILabelComponent(props: .init(
//            text: "Label 2",
//            textAlignment: .center,
//            backgroundColor: .cyan
//        ))
//
//        let label3 = UILabelComponent(props: .init(
//            text: "Label 3",
//            textAlignment: .center,
//            backgroundColor: .green
//        ))
//
//        let stack2 = UIStackViewComponent(props: .init(
//            children: [
//                .any(label2),
//                .any(label3)
//            ],
//            axis: .horizontal
//        ))
//
//        let stack = UIStackViewComponent(props: .init(
//            children: [
//                .any(label1),
//                .any(stack2)
//            ]
//        ))

        let customComponentA = CustomComponentA(props: ())

        let container = UIKitComponentController(with: customComponentA)
        addChildViewController(container)
        view.addSubview(container.view)
    }
}

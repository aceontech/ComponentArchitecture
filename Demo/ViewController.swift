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
            CustomComponentA(props: ())
        )
        addChildViewController(container)
        view.addSubview(container.view)
    }
}

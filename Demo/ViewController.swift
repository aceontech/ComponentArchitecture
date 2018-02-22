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

        let component = UILabelComponent()
        component.props = [ "text": "UILabelComponent" ]

        let componentRenderer = UIViewComponentRenderer(component: component, in: view)
        componentRenderer.render()
    }
}

//
//  CustomComponentA.swift
//  Demo
//
//  Created by Alex on 25/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation
import ComponentArchitecture

class CustomComponentA: Component {
    typealias State = Void

    required init(props: Void) {
    }

    func render() -> UIView {
        return UIStackViewComponent(props: .init(
            children: [
                .any(UILabelComponent(props: .init(text: "Label", backgroundColor: .yellow))),
                .any(UIStackViewComponent(props: .init(axis: .horizontal, children: [
                    .any(UILabelComponent(props: .init(text: "Button 1", backgroundColor: .cyan))),
                    .any(UILabelComponent(props: .init(text: "Button 2", backgroundColor: .blue)))
                ])))
            ]
        )).render()
    }
}

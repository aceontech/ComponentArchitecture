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
        return .stack(children: [
            .label(.init(text: "Label 1", backgroundColor: .yellow)),
            .stack(.init(axis: .horizontal), children: [
                .label(.init(text: "Label 2", backgroundColor: .cyan)),
                .label(.init(text: "Label 3", backgroundColor: .green))
            ])
        ])
    }
}

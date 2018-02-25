//
//  UIStackViewComponent.swift
//  ComponentArchitecture
//
//  Created by Alex on 25/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public class UIStackViewComponent: Component {
    public typealias State = Void

    public struct Props: ComponentPropsWithUIViewChildren {
        public let children: [AnyUIViewComponent]
        public let axis: UILayoutConstraintAxis
        public let distribution: UIStackViewDistribution

        public init(children: [AnyUIViewComponent], axis: UILayoutConstraintAxis = .vertical, distribution: UIStackViewDistribution = .fillEqually) {
            self.children = children
            self.axis = axis
            self.distribution = distribution
        }
    }

    private let props: Props

    public required init(props: Props) {
        self.props = props
    }

    public func render() -> UIStackView {
        let children = props.children.map { $0.render() }
        let stackView = UIStackView(arrangedSubviews: children)
        stackView.axis = props.axis
        stackView.distribution = props.distribution
        return stackView
    }
}

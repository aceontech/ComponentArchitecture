//
//  UIStackViewComponent.swift
//  ComponentArchitecture
//
//  Created by Alex on 25/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public class UIStackViewComponent: Component, HasChildComponents {

    public struct Props {
        public let axis: UILayoutConstraintAxis
        public let distribution: UIStackViewDistribution

        public init(axis: UILayoutConstraintAxis = .vertical, distribution: UIStackViewDistribution = .fillEqually) {
            self.axis = axis
            self.distribution = distribution
        }
    }

    private let props: Props
    public typealias State = Void

    public private(set) var children = [AnyUIViewComponent]()

    public convenience init(props: Props = Props(), children: [Child]) {
        self.init(props: props)
        self.children = children
    }

    public required init(props: Props) {
        self.props = props
    }

    public func render() -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: children.map { $0.render() })
        stackView.axis = props.axis
        stackView.distribution = props.distribution
        return stackView
    }
}

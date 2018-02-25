//
//  UILabelComponent.swift
//  ComponentArchitecture
//
//  Created by Alex on 22/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation
import UIKit

public class UILabelComponent: Component {

    public struct Props {
        public let text: String
        public let textAlignment: NSTextAlignment
        public let backgroundColor: UIColor

        public init(text: String, textAlignment: NSTextAlignment = .left, backgroundColor: UIColor = .clear) {
            self.text = text
            self.textAlignment = textAlignment
            self.backgroundColor = backgroundColor
        }
    }

    public typealias State = [String: Any]
    private let props: Props

    public required init(props: Props) {
        self.props = props
    }

    public func render() -> UILabel {
        let label = UILabel(frame: .zero)
        label.text = props.text
        label.textAlignment = props.textAlignment
        label.backgroundColor = props.backgroundColor
        return label
    }
}

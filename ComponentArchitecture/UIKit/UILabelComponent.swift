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

    public var state = [String: Any]()
    public var props = [String: Any]()

    public init() {}

    public func render() -> UILabel {
        let label = UILabel(frame: .zero)
        label.text = props["text"] as? String
        return label
    }
}

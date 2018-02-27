//
//  UIKitComponentDSL.swift
//  ComponentArchitecture
//
//  Created by Alex on 26/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

extension UIView {
    public static func label(_ props: UILabelComponent.Props) -> UILabel {
        return UILabelComponent(props: props).render()
    }

    public static func stack(_ props: UIStackViewComponent.Props = UIStackViewComponent.Props(), children: [AnyUIViewComponent]) -> UIStackView {
        return UIStackViewComponent(props: props, children: children).render()
    }
}

extension AnyUIViewComponent {
    public static func label(_ props: UILabelComponent.Props) -> AnyUIViewComponent {
        return .any(UILabelComponent(props: props))
    }

    public static func stack(_ props: UIStackViewComponent.Props = UIStackViewComponent.Props(), children: [AnyUIViewComponent]) -> AnyUIViewComponent {
        return .any(UIStackViewComponent(props: props, children: children))
    }
}

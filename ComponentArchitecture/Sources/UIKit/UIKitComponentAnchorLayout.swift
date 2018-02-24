//
//  UIKitComponentAnchorLayout.swift
//  ComponentArchitecture
//
//  Created by Alex on 24/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public class UIKitComponentAnchorLayout: ComponentLayout {

    public struct Anchors: OptionSet {
        public let rawValue: Int

        public static let top = Anchors(rawValue: 1 << 0)
        public static let right = Anchors(rawValue: 1 << 1)
        public static let bottom = Anchors(rawValue: 1 << 2)
        public static let left = Anchors(rawValue: 1 << 3)

        public static let all: [Anchors] = [ .top, .right, .bottom, .left ]

        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
    }

    private let anchors: [Anchors]

    public init(pinTo anchors: [Anchors]) {
        self.anchors = anchors
    }

    public static let pinnedToAll = UIKitComponentAnchorLayout(pinTo: Anchors.all)

    public func applyLayout(to view: UIView, in superview: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false

        if anchors.contains(.top) {
            view.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        }

        if anchors.contains(.right) {
            view.rightAnchor.constraint(equalTo: superview.rightAnchor).isActive = true
        }

        if anchors.contains(.bottom) {
            view.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
        }

        if anchors.contains(.left) {
            view.leftAnchor.constraint(equalTo: superview.leftAnchor).isActive = true
        }
    }
}

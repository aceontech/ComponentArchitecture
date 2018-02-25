//
//  ComponentPropsWithChildren.swift
//  ComponentArchitecture
//
//  Created by Alex on 25/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public protocol ComponentProps {
}

public protocol ComponentPropsWithChildren: ComponentProps {
    associatedtype Child: Component
    var children: [Child] { get }
}

//
//  ComponentLayout.swift
//  ComponentArchitecture
//
//  Created by Alex on 24/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public protocol ComponentLayout {
    associatedtype ComponentRendering
    associatedtype ComponentRenderingHost

    func applyLayout(to componentRendering: ComponentRendering, in host: ComponentRenderingHost)
}

//
//  ComponentLayoutProvider.swift
//  ComponentArchitecture
//
//  Created by Alex on 24/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public class ComponentLayoutProvider<ComponentRendering, ComponentRenderingHost>: ComponentLayout {
    public typealias Provider = (ComponentRendering, ComponentRenderingHost) -> Void
    private let provider: Provider

    public init(with provider: @escaping Provider) {
        self.provider = provider
    }

    public func applyLayout(to componentRendering: ComponentRendering, in host: ComponentRenderingHost) {
        provider(componentRendering, host)
    }
}

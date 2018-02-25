//
//  ComponentPropsWithUIViewChildren.swift
//  ComponentArchitecture
//
//  Created by Alex on 25/02/2018.
//  Copyright © 2018 Jarroo. All rights reserved.
//

import Foundation

public protocol ComponentPropsWithUIViewChildren: ComponentPropsWithChildren
where Child.Rendering: UIView {}

# Swift Component Architecture
Inspired by the [React JS component architecture](https://reactjs.org/docs/react-component.html).
Name is provisional.

```swift
class CustomComponent: Component {
    typealias State = Void
    required init(props: Void) {}

    func render() -> UIView {
        return .stack(children: [
            .label(.init(text: "Label 1", backgroundColor: .yellow)),
            .stack(.init(axis: .horizontal), children: [
                .label(.init(text: "Label 2", backgroundColor: .cyan)),
                .label(.init(text: "Label 3", backgroundColor: .orange))
            ])
        ])
    }
}
```

<img src="Docs/demo.png" width="250"/>

## `Component` protocol

Components that adopt the `Component` protocol, declare their input properties (`Props`), changeable `State`, and their `Rendering` output. When targeting iOS, this'll be `UIView` or one of its subclasses.

```swift
public protocol Component: class {
    associatedtype Rendering
    associatedtype State
    associatedtype Props

    var state: State { get set }

    init(props: Props)
    func render() -> Rendering
}
```

## `ComponentRenderer` protocol

A `ComponentRenderer` is a support class that takes a `Component`'s properties and state, and renders it.

```swift
public protocol ComponentRenderer {
    func render()
}
```

See [UIKitComponentRenderer.swift](https://github.com/jarrroo/ComponentArchitecture/blob/master/ComponentArchitecture/Sources/UIKit/UIKitComponentRenderer.swift) for an example targeting UIKit.

## `ComponentLayout` protocol

A `ComponentLayout` is a support class that takes a `Component` and lays out its rendering inside a host.

```swift
public protocol ComponentLayout {
    associatedtype ComponentRendering
    associatedtype ComponentRenderingHost

    func applyLayout(to componentRendering: ComponentRendering, in host: ComponentRenderingHost)
}
```
See [UIKitComponentAnchorLayout.swift](https://github.com/jarrroo/ComponentArchitecture/blob/master/ComponentArchitecture/Sources/UIKit/UIKitComponentAnchorLayout.swift), an AutoLayout implementation with support for pinning to one or more edges

## DSL

Domain Specific Language for composing components. [UIKitComponentDSL.swift](https://github.com/jarrroo/ComponentArchitecture/blob/master/ComponentArchitecture/Sources/UIKit/UIKitComponentDSL.swift) exposes shorthands for the built-in UIKit components.

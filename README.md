not-awesome-swiftui
===

SwiftUI is amazing. It's functional, it's consistent and it upgrades the layout paradigm for Apple platforms to a modern and much more up-to-date approach. But it isn't without flaws.

This project aims to shed a light on some of it's bugs that you should be aware of **before** start developing your application. It currently consist of a list of mostly macOS issues because that seems to be in a worst shape, overall, than SwiftUI for iOS or iPadOS, however, feel free to append any known SwiftUI issues to this repository regardless its platform. Pull-requests are more than welcome.

# macOS Issues

Known issues on macOS

## Cursor system is unreliable

Radar: [FB9045245](https://openradar.appspot.com/radar?id=5065961258352640)

The cursor system simply does not work with SwiftUI, specially when relying on `onHover` to modify the cursor.

Preview: [CursorUnreliableView](/macOS/CursorUnreliableView.swift)

## Nested hover is captured when overlayed with another view

Radar: [9010301](https://openradar.appspot.com/radar?id=4990741046624256)

When rendering a ZStack, if any Views with a lower `zIndex` than its siblings applies an `onHover` modifier, that closure gets called even if the View is overlayed (and potentially hidden) by other Views.


Preview: [NestedHoverView](/macOS/NestedHoverView.swift)

## ScrollView update improperly renders content disregarding indicators

Radar: [9038728](https://openradar.appspot.com/radar?id=5016967895318528)

When updating the content of a ScrollView, if the new content requires the indicators to be visible (i.e. expanding the content size) the content will be improperly rendered with the full ScrollView width disregarding the ScrollView's indicators which will cover some of the content.

A workaround is manually forcing the ScrollView to be re-updated either by changing a state or an observed object.

Preview: [ScrollViewIndicatorsView](/macOS/ScrollViewIndicatorsView.swift)

## TextField ignores `.textCase`

Radar: [FB9047229](https://openradar.appspot.com/radar?id=5040168704671744)

TextFields on macOS ignores `.textCase` modifiers. The given case is applied only to the placeholder, but not to the typed content.

Preview: [UppercasedTextFieldView](/macOS/UppercasedTextFieldView.swift)
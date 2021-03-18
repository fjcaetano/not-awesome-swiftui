not-awesome-swiftui
===

SwiftUI is amazing. It's functional, it's consistent and it upgrades the layout paradigm for Apple platforms to a modern and much more up-to-date approach. But it isn't without flaws.

This project aims to shed a light on some of it's bugs that you should be aware of **before** start developing your application. It currently consist of a list of mostly macOS issues because that seems to be in a worst shape, overall, than SwiftUI for iOS or iPadOS, however, feel free to append any known SwiftUI issues to this repository regardless its platform. Pull-requests are more than welcome.

# macOS Issues

## Cursor system is unreliable

Radar: [FB9045245](https://openradar.appspot.com/radar?id=5065961258352640)

The cursor system simply does not work with SwiftUI, specially when relying on `onHover` to modify the cursor.

Preview: [CursorUnreliableView](/macOS/CursorUnreliableView.swift)
# macos-wallpaper

> Manage the desktop wallpaper on macOS

This is both a command-line app and a Swift package.

It correctly handles getting the active wallpaper even when the wallpaper is set to a directory.

## API

*Building this requires the latest Xcode and macOS version. The package supports macOS 10.14.4 or later.*

### Install

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/sindresorhus/macos-wallpaper", from: "2.3.1")
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

### Usage

```swift
import Wallpaper

let imageURL = URL(fileURLWithPath: "<path>", isDirectory: false)
try! Wallpaper.set(imageURL, screen: .main, scale: .fill)

let solidColor = NSColor.blue
try! Wallpaper.set(solidColor, screen: .main)

print(try! Wallpaper.get(screen: .main))
```

See the [source](Sources/wallpaper/Wallpaper.swift) for more.

## Dev

### Run

```sh
swift run wallpaper
```

### Build

```sh
swift build --configuration=release --arch arm64 --arch x86_64 && mv .build/apple/Products/Release/wallpaper .
```

## Related

- [wallpaper](https://github.com/sindresorhus/wallpaper) - Get or set the desktop wallpaper cross-platform *(Uses this binary)*
- [macos-trash](https://github.com/sindresorhus/macos-trash) - Move files and directories to the trash
- [do-not-disturb](https://github.com/sindresorhus/do-not-disturb) - Control the macOS `Do Not Disturb` feature
- [More…](https://github.com/search?q=user%3Asindresorhus+language%3Aswift)

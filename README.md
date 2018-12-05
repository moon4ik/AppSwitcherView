# AppSwitcherView

Show your custom View or LaunchScreen as default instead app snapshot in quick App Switcher.

[![CI Status](https://img.shields.io/travis/Oleksii Mykhailenko/AppSwitcherView.svg?style=flat)](https://travis-ci.org/Oleksii Mykhailenko/AppSwitcherView)
[![Version](https://img.shields.io/cocoapods/v/AppSwitcherView.svg?style=flat)](https://cocoapods.org/pods/AppSwitcherView)
[![License](https://img.shields.io/cocoapods/l/AppSwitcherView.svg?style=flat)](https://cocoapods.org/pods/AppSwitcherView)
[![Platform](https://img.shields.io/cocoapods/p/AppSwitcherView.svg?style=flat)](https://cocoapods.org/pods/AppSwitcherView)

## Example

Show LaunchScreen

```Swift
AppSwitcherView.show()
```

Show snapshot with blur

```Swift
AppSwitcherView.showBlur()
AppSwitcherView.showBlur(style: UIBlurEffect.Style, alpha: CGFloat)
```

Show your UIView

```Swift 
AppSwitcherView.setup(view: UIView)
```

Show your UIViewController

```Swift
AppSwitcherView.setup(viewController: UIViewController)
```

## Installation

AppSwitcherView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AppSwitcherView'
```

## Author

Oleksii Mykhailenko, moon4ik@gmail.com

## License

AppSwitcherView is available under the MIT license. See the LICENSE file for more info.

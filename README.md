# AppSwitcherView

[![Version](https://img.shields.io/cocoapods/v/AppSwitcherView.svg?style=flat)](https://cocoapods.org/pods/AppSwitcherView)
[![License](https://img.shields.io/cocoapods/l/AppSwitcherView.svg?style=flat)](https://cocoapods.org/pods/AppSwitcherView)
[![Platform](https://img.shields.io/cocoapods/p/AppSwitcherView.svg?style=flat)](https://cocoapods.org/pods/AppSwitcherView)

Show LaunchScreen or your UIView/UIViewController instead app snapshot in the [App Switcher](https://support.apple.com/en-us/HT202070).

## Requirements

- iOS 10.0+
- Xcode 10.0+
- Swift 4.2+

## Installation

AppSwitcherView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AppSwitcherView'
```

## How to use

Turn on AppSwitcherView by calling the following line in the ``- application:didFinishLaunchingWithOptions:`` application delegate. Don't forget do import: ``import AppSwitcherView``

```Swift
import AppSwitcherView
...
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
...
AppSwitcherView.show()
...
return true
}
```

Thats all, run your app and you will see the LaunchScreen when open the App Switcher.

## How to open App Switcher

**Switch apps on iPhone X or later:**
- Swipe up from the bottom to the middle of your screen and hold until you see the App Switcher.

If you have a *Smart Keyboard* or *Bluetooth keyboard* paired to your iPad, press **Command-Tab** to switch between apps.

**Switch apps with the Home button iPhone 8 or earlier:**
- Double-click the Home button to see recently used apps.

## Example

Show LaunchScreen

```Swift
AppSwitcherView.show()
```

Show your custom UIView

```Swift 
AppSwitcherView.show(view: YOUR_UIVIEW)
```

Show your custom UIViewController

```Swift
AppSwitcherView.show(viewController: YOUR_UIVIEWCONTROLLER)
```

Show snapshot with blur

```Swift
AppSwitcherView.showBlur() //Default blur settings
AppSwitcherView.showBlur(style: .dark, alpha: 0.75) //Custom blur settings
```

## Author

Oleksii Mykhailenko, moon4ik@gmail.com

## License

AppSwitcherView is available under the MIT license. See the LICENSE file for more info.

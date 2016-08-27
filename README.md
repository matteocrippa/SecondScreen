# SecondScreen

[![CI Status](http://img.shields.io/travis/matteocrippa/SecondScreen.svg?style=flat)](https://travis-ci.org/matteocrippa/SecondScreen)
[![Version](https://img.shields.io/cocoapods/v/SecondScreen.svg?style=flat)](http://cocoapods.org/pods/SecondScreen)
[![License](https://img.shields.io/cocoapods/l/SecondScreen.svg?style=flat)](http://cocoapods.org/pods/SecondScreen)
[![Platform](https://img.shields.io/cocoapods/p/SecondScreen.svg?style=flat)](http://cocoapods.org/pods/SecondScreen)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SecondScreen is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SecondScreen"
```

## Usage

Pretty easy to use instantiate `SecondScreen` and add delegates:

```swift
import UIKit
import SecondScreen

class ViewController: UIViewController, SecondScreenDelegate {

    var secondScreen = SecondScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        secondScreen.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    deinit {}


    func externalVideoConnected(externalWindow: UIWindow) {
        print("Ext video connect")

        // externalWindow.rootViewController =
    }

    func externalVideoDisconnected() {
        print("Ext video disconnected")
    }
}
```


## Author

Matteo Crippa, @ghego20

## License

SecondScreen is available under the MIT license. See the LICENSE file for more info.

# DBProgressHUD

DBProgressHUD inherited from MBProgressHUD, is based on the MBProgressHUD part of the expansion of the function. Is still in the initial stage, follow-up will add more useful features.

## Requirements

`DBProgressHUD` works on iOS 8+ and requires ARC to build. It depends on the following Apple frameworks, which should already be included with most Xcode templates:

- Foundation.framework
- UIKit.framework
- CoreGraphics.framework

You will need the latest developer tools in order to build `DBProgressHUD`. Old Xcode versions might work, but compatibility will not be explicitly maintained.

## Instructions

## Adding DBProgressHUD to your project

### CocoaPods

[CocoaPods](http://cocoapods.org/) is the recommended way to add DBProgressHUD to your project.

1. Add a pod entry for DBProgressHUD to your Podfile `pod 'DBProgressHUD'`
2. Install the pod(s) by running `pod install`.
3. Include DBProgressHUD wherever you need it with `#import "DBProgressHUD.h"`.

### Source files

Alternatively you can directly add the `DBProgressHUD.h` and `DBProgressHUD.m` source files to your project.

1. Download the [latest code version](https://github.com/Dabay-Tech/DBProgressHUD.git) or add the repository as a git submodule to your git-tracked project.
2. Open your project in Xcode, then drag and drop `DBProgressHUD.h` and `DBProgressHUD.m` onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project.
3. Include DBProgressHUD wherever you need it with `#import "DBProgressHUD.h"`.

## Usage









## License

This code is distributed under the terms and conditions of the [MIT license](https://github.com/jdg/MBProgressHUD/blob/master/LICENSE).




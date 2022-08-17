# google-mapView-for-ios-basic-app


CocoaPods is built with Ruby and is installable with the default Ruby available on macOS. We recommend you use the default ruby.

Using the default Ruby install can require you to use sudo when installing gems. Further installation instructions are in the guides.

$ sudo gem install cocoapods


Search for pods (above). Then list the dependencies in a text file named Podfile in your Xcode project directory:

platform :ios, '8.0'
use_frameworks!

target 'MyApp' do
  pod 'AFNetworking', '~> 2.6'
  pod 'ORStackView', '~> 3.0'
  pod 'SwiftyJSON', '~> 2.3'
end


Tip: CocoaPods provides a pod init command to create a Podfile with smart defaults. You should use it.

Now you can install the dependencies in your project:

$ pod install
Make sure to always open the Xcode workspace instead of the project file when building your project:

$ open App.xcworkspace
Now you can import your dependencies e.g.:

#import <Reachability/Reachability.h>


Sometimes CocoaPods doesn’t yet have a pod for one of your dependencies. Fortunately, creating a pod is pretty easy:

$ pod spec create Peanut
$ edit Peanut.podspec
$ pod spec lint Peanut.podspec
You can find a lot of information on the process in the guides. When you're done you can get an account and push your pod to the CocoaPods Trunk.

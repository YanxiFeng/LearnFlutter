import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    //1, controller
    let controller: FlutterViewController = window.rootViewController as! FlutterViewController
    
    //2, channel
    let channel = FlutterMethodChannel(name: "com.chope.chopebook/battery", binaryMessenger: controller.binaryMessenger)
    
    //3, 监听
    channel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
        guard call.method == "getBatteryInfo" else {
            result(FlutterMethodNotImplemented)
            return
        }
        result(100)
    }
    
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

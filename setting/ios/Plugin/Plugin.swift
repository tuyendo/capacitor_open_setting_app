import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(setting)
public class setting: CAPPlugin {
    @objc func openSettingLocation(_ call: CAPPluginCall){
        if let bundleID = Bundle.main.bundleIdentifier {
            if let url = URL(string: "\(UIApplicationOpenSettingsURLString)&path=LOCATION/\(bundleID)"){
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else if let url = URL(string: UIApplicationOpenSettingsURLString) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        } else if let url = URL(string: UIApplicationOpenSettingsURLString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        call.success()
    }
    
    @objc func openSetting(_ call: CAPPluginCall){
        if let url = URL(string: UIApplicationOpenSettingsURLString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        call.success()
    }
}

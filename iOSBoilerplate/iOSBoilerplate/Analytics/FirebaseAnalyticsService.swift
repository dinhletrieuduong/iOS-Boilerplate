
import Foundation
import Firebase

class FirebaseAnalyticsService: AnalyticsService {
    func setup() {
        guard
            let googleServicesPath = Bundle.main.object(
                forInfoDictionaryKey: "GoogleServicesFileName"
            ) as? String,
            let filePath = Bundle.main.path(forResource: googleServicesPath, ofType: "plist"),
            let firebaseOptions = FirebaseOptions(contentsOfFile: filePath) else {
            print("""
          Failed to initialize firebase options, please check your configuration settings
        """)
            return
        }
        FirebaseApp.configure(options: firebaseOptions)
    }
    
    func identifyUser(with userId: String) {
        Analytics.setUserID(userId)
    }
    
    func log(event: AnalyticsEvent) {
        Analytics.logEvent(event.name, parameters: event.parameters)
    }
    
    func reset() {
        Analytics.resetAnalyticsData()
    }
}

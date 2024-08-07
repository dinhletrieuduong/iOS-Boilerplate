
import Foundation
import FirebaseAnalytics

/**
 Base component in charge of logging events on the application.
 The goal of this class is to act as a proxy
 between the app and all the analytics services that are integrated.
 Broadcast every event to all of it associated services.
 */
class AnalyticsManager: AnalyticsService {
    /**
     List of services that will be notified.
     You can either customize this class and add new ones,
     or subclass it and override the variable.
     */
    open var services: [AnalyticsService] = [FirebaseAnalyticsService()]
    
    static let shared = AnalyticsManager()
    private init() {}

    public func setup() {
        services.forEach { $0.setup() }
    }
    
    public func identifyUser(with userId: String) {
        services.forEach { $0.identifyUser(with: userId) }
    }
    
    public func log(event: AnalyticsEvent) {
        services.forEach { $0.log(event: event) }
    }
    
    func reset() {
        services.forEach { $0.reset() }
    }

//    static func logCustomEvent(eventType: EventType, properties: [String: Any]) {
//        let event = Event(eventType: eventType.rawValue, eventProperties: properties)
//        shared.track(event: event)
//    }
//
//    func track(event: Event) {
//        Analytics.logEvent(event.name, parameters: event.parameters)
//    }
//
//    static func logButtonClickEvent(buttonType: ButtonType, label: String) {
//        let event = BaseEvent(
//            eventType: EventType.buttonClick.rawValue,
//            eventProperties: ["button_type": buttonType.rawValue, "label": label]
//        )
//        AnalyticsManager.shared.track(event: event)
//    }
//
//    static func logScreenView(screenName: String, screenClass: String? = nil) {
//        let parameters: [String: Any] = [
//            AnalyticsParameterScreenName: screenName,
//            AnalyticsParameterScreenClass: screenClass ?? screenName
//        ]
//        Analytics.logEvent(AnalyticsEventScreenView, parameters: parameters)
//    }
}



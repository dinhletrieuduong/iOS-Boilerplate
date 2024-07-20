
import Foundation

enum ButtonType: String {
    case primary = "Primary"
    case secondary = "Secondary"
    case text =  "Text"
    case back = "Back"
    case navigationTab = "Navigation Tab"
}

enum EventType: String {
    case login = "login"
    case updateUser = "update_user"
    case buttonClick = "button_click"
}

/**
 Protocol that defines the minimum attributes that an AnalyticsEvent should have.
 The AnalyticsService is in charge of parsing these events and logging
 them to a specific analytics platform.
 */
protocol AnalyticsEvent {
    /// The event name, usually used to identify itself.
    var name: String { get }
    /// Payload sent to the analytics service as extra information for the event.
    var parameters: [String: Any] { get }
}

/**
 Enums are a nice way of grouping events semantically.
 For example you could have enums for AuthEvents, ProfileEvents, SearchEvents, etc.
 Any data structure that conforms to the AnalyticsEvent protocol will work though.
 */
enum Event: AnalyticsEvent {
    case login
    case registerSuccess(email: String)

    case error(name: String, error: Error)
    case custom(name: String)

    public var name: String {
        switch self {
            case .login:
                return "login"
            case .registerSuccess:
                return "register_success"
            case .custom(let name):
                return name
            case .error(let name, _):
                return name
        }
    }
    
    var parameters: [String: Any] {
        switch self {
            case .registerSuccess(let email):
                return ["user_email": email]
            case .custom(let name):
                return [name: name]
            case .error(_, let error):
                return ["error": error]
            default:
                return [:]
        }
    }
}

//
//  Constants.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import Foundation

struct AppConstants {
    static let domain = Bundle.main.bundleIdentifier ?? ""

    static func error(
        domain: ErrorDomain = .generic, code: Int? = nil,
        localizedDescription: String = ""
    ) -> NSError {
        NSError(
            domain: AppConstants.domain + "." + domain.rawValue,
            code: code ?? 0,
            userInfo: [NSLocalizedDescriptionKey: localizedDescription]
        )
    }

    static let BASE_URL = "BASE_URL"
    static let EXAMPLE_KEY = "EXAMPLE_KEY"

    static let weatherAppId = "1d8b7e6f3849be9a808176f247698ec3"

    static let countriesOptions = ["India", "USA", "UK", "France", "China", "UAE", "Other"]
}

enum ErrorDomain: String {
    case generic = "GenericError"
    case parsing = "ParsingError"
    case network = "NetworkError"
}

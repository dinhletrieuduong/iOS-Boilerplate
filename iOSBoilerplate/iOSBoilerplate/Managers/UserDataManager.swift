//
//  UserDataManager.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import Foundation

class UserDataManager: NSObject {

    static let shared = UserDataManager()

    static let USERKEY = "ios-base-user"

    var currentUser: User? {
        get {
            let defaults = UserDefaults.standard
            if
                let data = defaults.data(forKey: UserDataManager.USERKEY),
                let user = try? JSONDecoder().decode(User.self, from: data)
            {
                return user
            }
            return nil
        }

        set {
            let user = try? JSONEncoder().encode(newValue)
            UserDefaults.standard.set(user, forKey: UserDataManager.USERKEY)
        }
    }

    func deleteUser() {
        UserDefaults.standard.removeObject(forKey: UserDataManager.USERKEY)
    }

    var isUserLogged: Bool {
        currentUser != nil
    }
}

struct User: Codable {
    var id: Int
    var username: String
    var email: String
    var image: URL?

    private enum CodingKeys: String, CodingKey {
        case id
        case username
        case email
        case image = "profile_picture"
    }
}

struct UserData: Codable {
    var data: User

    private enum CodingKeys: String, CodingKey {
        case data
    }
}

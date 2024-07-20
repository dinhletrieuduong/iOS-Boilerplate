//
//  JSONEncodingExtension.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//


import Foundation

extension JSONDecoder {

    func decode<T>(
        _ type: T.Type, from dictionary: [String: Any]
    ) throws -> T where T: Decodable {
        let data = try? JSONSerialization.data(withJSONObject: dictionary, options: [])
        return try decode(T.self, from: data ?? Data())
    }
}

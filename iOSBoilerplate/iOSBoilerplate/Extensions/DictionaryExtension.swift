//
//  DictionaryExtension.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//


import Foundation

// + Operator definition for Dictionary types

func + <K, V> (left: [K: V], right: [K: V]) -> [K: V] {
    var merge = left
    for (key, value) in right {
        merge[key] = value
    }
    return merge
}

func += <K, V> (left: inout [K: V], right: [K: V]) {
    left = left + right
}

extension Dictionary where Key: ExpressibleByStringLiteral {

    mutating func lowercaseKeys() {
        for key in self.keys {
            if let loweredKey = String(describing: key).lowercased() as? Key {
                self[loweredKey] = self.removeValue(forKey: key)
            }
        }
    }
}

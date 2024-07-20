//
//  NetworkState.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import Foundation

enum NetworkState: Equatable {
    case idle, loading, error(_ error: String)
}

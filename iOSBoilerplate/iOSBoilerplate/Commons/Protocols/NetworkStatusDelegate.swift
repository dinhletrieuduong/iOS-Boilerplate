//
//  NetworkStatusDelegate.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import Foundation

protocol NetworkStatusDelegate: AnyObject {
    func networkStatusChanged(to networkStatus: NetworkState)
}

// Example:
//protocol AuthViewModelStateDelegate: NetworkStatusDelegate {
//    func didUpdateState(to state: AuthViewModelState)
//}
//
//extension AuthViewModelStateDelegate where Self: UIViewController {
//    func didUpdateState(to state: AuthViewModelState) {
//        switch state {
//            case .network(let networkStatus):
//                networkStatusChanged(to: networkStatus)
//            case .loggedIn:
//                AppNavigator.shared.navigate(to: HomeRoutes.home, with: .changeRoot)
//        }
//    }
//}
//
//extension NetworkStatusDelegate where Self: UIViewController {
//    func networkStatusChanged(to networkStatus: NetworkState) {
//        if let viewController = self as? ActivityIndicatorPresenter {
//            viewController.showActivityIndicator(networkStatus == .loading)
//        }
//        switch networkStatus {
//            case .error(let errorDescription):
//                showMessage(title: "Error", message: errorDescription)
//            default:
//                break
//        }
//    }
//}


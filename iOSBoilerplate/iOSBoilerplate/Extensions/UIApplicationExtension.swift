//
//  UIApplicationExtension.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import Foundation
import UIKit

extension UIApplication {
  class func showNetworkActivity() {
    UIApplication.shared.isNetworkActivityIndicatorVisible = true
  }
  
  class func hideNetworkActivity() {
    UIApplication.shared.isNetworkActivityIndicatorVisible = false
  }
}

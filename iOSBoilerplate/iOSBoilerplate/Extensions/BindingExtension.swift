//
//  BindingExtension.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import SwiftUI

extension Binding {
    func notNil<T: Equatable>() -> Binding<Bool> where T? == Value {
        Binding<Bool>(
            get: {
                wrappedValue != nil
            },
            set: { newValue in
                if !newValue {
                    wrappedValue = nil
                }
            }
        )
    }
    
    func isEquivalent<T: Equatable>(to value: T?, animated: Bool = false) -> Binding<Bool> where T? == Value {
        Binding<Bool>(
            get: {
                wrappedValue == value
            },
            set: { newValue in
                if animated {
                    // If the new value is false, indicating non-equivalence, set the wrapped value to nil.
                    withAnimation {
                        wrappedValue = newValue ? value : nil
                    }
                } else {
                    wrappedValue = newValue ? value : nil
                }
            }
        )
    }

    func unwrapped<T>(defaultValue: T) -> Binding<T> where T? == Value {
        Binding<T>(
            get: {
                wrappedValue ?? defaultValue
            },
            set: {
                wrappedValue = $0
            }
        )
    }
}

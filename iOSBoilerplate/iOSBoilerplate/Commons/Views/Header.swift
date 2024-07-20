//
//  Header.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import SwiftUI

struct Header : View {
    var text: LocalizedStringKey
    var hasBackButton: Bool = false
    var onBackArrowClick: () -> Void = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if(hasBackButton) {
                Button(action: onBackArrowClick) {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(.primaryNavyBlue)
                }
            }
            Text(text)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.notoSansBold24)
                .foregroundColor(.primaryNavyBlue)
        }
    }
}

#Preview {
    Header(text: "Heading", hasBackButton: true, onBackArrowClick: {})
}

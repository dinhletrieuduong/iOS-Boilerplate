//
//  TextKeyValueView.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import SwiftUI

struct TextKeyValueView: View {
    var key: LocalizedStringKey
    var value: String
    
    var body: some View {
        HStack{
            Text(key) + Text(":")
            Text(value)
        }.frame(alignment: .leading)
    }
}

#Preview {
    TextKeyValueView(key:"Name", value: "User Name")
}

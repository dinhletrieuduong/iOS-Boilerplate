//
//  TextButton.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import SwiftUI

struct TextButton : View {
    enum Style {
        case filled, outline, textOnly
    }
    
    // MARK: - Attributes
    var onClick: () -> Void
    var text: LocalizedStringKey
    var style: Style = .filled
    var color: Color = .primaryNavyBlue
    
    // MARK: - Views
    var body: some View {
        Button(action: onClick){
            Text(text)
                .font(.notoSansMedium12)
                .frame(maxWidth: .infinity)
                .padding(14)
                .foregroundColor(style == .filled ? .white : color)
                .background(style == .filled ? color : .clear)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .inset(by: 0.75)
                        .stroke(style == .outline ? color : .clear, lineWidth: 1.5)
                )
                .contentShape(Rectangle())
            
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack{
        TextButton(onClick: {}, text: "Click Me", style: .filled, color: .primaryNavyBlue)
        TextButton(onClick: {}, text: "Click Me", style: .outline, color: .primaryNavyBlue)
        TextButton(onClick: {}, text: "Click Me", style: .textOnly, color: .primaryNavyBlue)
        HStack{
            TextButton(onClick: {}, text: "Click Me", style: .outline, color: .primaryNavyBlue)
            TextButton(onClick: {}, text: "Click Me", style: .filled, color: .primaryNavyBlue)
        }
    }
    .padding()
}

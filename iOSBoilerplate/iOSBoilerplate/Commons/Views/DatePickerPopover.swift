//
//  DatePickerPopover.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import SwiftUI


struct DatePickerPopover: View {
    @Binding var isPresented: Bool
    @Binding var dateSelection: Date
    let title: LocalizedStringKey
    let doneButtonLabel: LocalizedStringKey

    var body: some View {
        VStack {
            DatePicker(
                title,
                selection: $dateSelection,
                displayedComponents: .date
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            .labelsHidden()
            .frame(maxHeight: 400)
            
            Button(doneButtonLabel) {
                self.isPresented = false
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    DatePickerPopover(isPresented: Binding.constant(true), dateSelection: Binding.constant(Date()), title: "Title", doneButtonLabel: "Done")
}

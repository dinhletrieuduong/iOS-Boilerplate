//
//  PickerView.swift
//  iOSBoilerplate
//
//  Created by Dinh Le Trieu Duong on 20/7/24.
//

import SwiftUI

struct CountryView: View {
    @Binding var selectedCountry: String
    
    var  body: some View {
        VStack(alignment: .leading){
            HStack {
                Text(AppStrings.SelectCountry)
                    .font(.notoSansMedium16)
                    .foregroundColor(.primaryNavyBlue)
                Picker(AppStrings.SelectCountryPlaceHolder, selection: $selectedCountry){
                    ForEach(AppConstants.countriesOptions, id: \.self){
                        country in
                        Text(getLocalString(country))
                    }
                }
                .pickerStyle(DefaultPickerStyle())
                
                Spacer()
            }
        }
    }
}

struct GenderView: View {
    @Binding var selectedGender: Gender
    
    var body: some View  {
        VStack(alignment: .leading){
            Text(AppStrings.Gender)
                .font(.notoSansMedium16)
                .foregroundColor(.primaryNavyBlue)
            Picker(AppStrings.GenderPlaceHolder, selection: $selectedGender) {
                ForEach(Gender.allCases) { gender in
                    Text(getLocalString(gender.rawValue)).tag(gender)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

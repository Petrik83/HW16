//
//  SearchFindView.swift
//  HW16
//
//  Created by Александр Петрович on 02.02.2022.
//

import SwiftUI

struct SearchView: View {
    var pickerChoices = ["Apple Music", "Ваша Медиатека"]
    @EnvironmentObject var picker: PickerChoise
    
    var body: some View {
        VStack {
            
            Picker(selection: $picker.pickerSelection, label: Text("")) {
                ForEach(pickerChoices, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 20)
            Text(picker.pickerSelection)
            Spacer()
        }
    }
}


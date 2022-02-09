//
//  FindField.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 2.02.22.
//

import SwiftUI

struct FindField: View {
    
    var array = [String]()
    @EnvironmentObject var searchText: SearchText
    @Binding var showCancelButton: Bool
    @EnvironmentObject var picker: PickerChoise
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField(picker.pickerSelection, text: $searchText.searchText, onEditingChanged: { isEditing in
                        self.showCancelButton = true
                    }, onCommit: {
                        print("onCommit")
                    }).foregroundColor(.primary)
                    
                    Button(action: {
                        self.searchText.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill").opacity(searchText.searchText == "" ? 0 : 1)
                    }
                }
                .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                .foregroundColor(.secondary)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10.0)
                
                if showCancelButton  {
                    Button("Отмена") {
                        UIApplication.shared.endEditing(true)
                        self.searchText.searchText = ""
                        self.showCancelButton = false
                    }
                    .foregroundColor(Color(.systemRed))
                }
            }
            .padding(.horizontal, 20)
            .navigationBarHidden(showCancelButton)
//                        .animation(.default)
        }
        
    }
}

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

